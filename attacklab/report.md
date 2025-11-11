## Attack Lab 实验报告

### 实验原理概述

- 栈缓冲区溢出：`Gets`（或等价不做长度检查的输入函数）会把用户输入写入局部数组，若长度超过缓冲区，则会覆盖调用帧内更高地址的数据，最终可覆盖返回地址。
- 调用约定：函数第 1 个参数从寄存器 `%rdi` 传入。因此要调用 `touch2(unsigned)` 需要把 cookie 放入 `%rdi`，要调用 `touch3(char*)` 需要把字符串指针放入 `%rdi`。
- 小端序与地址：64 位地址在输入字符串中以小端序写入（低字节在前）。
- 代码注入 vs ROP：
	- ctarget 可执行栈：可直接在输入中嵌入“注入指令”，先跳进注入代码，再跳到目标函数。
	- rtarget 不可执行栈：栈不可执行，不能注入代码；需使用 ROP（Return-Oriented Programming）把若干短小的“gadget”（以 ret 结尾的指令序列）连起来，实现“把参数放到 `%rdi`”等效果，然后返回到 `touchX`。

### 环境与准备

- 实验环境：WSL Ubuntu 24.04.1 LTS，通过 `/mnt/c` 访问实验文件
- 目标程序与反汇编：本次使用附件给出的 `ctarget.d`、`rtarget.d` 定位关键函数地址：
	- ctarget: `touch1@0x8089b8`、`touch2@0x8089e6`、`touch3@0x808afd`
	- rtarget: `touch2@0x8089e6`
- Cookie：从 `cookie.txt` 获得，本次为十六进制 `0x19195f9f`，字符串形式为 `"19195f9f\0"`。
- 构造与投递：`.\hex2raw < xtarget0x.txt | ./xtarget`

---

## 分阶段攻击与字符串解析

下面逐一说明四个攻击字符串的含义、构造过程与它们代表的“代码/控制流”。

### 1) ctarget 阶段 1（touch1）— 直接覆盖返回地址

文件：`ctarget01.txt`

- 内容要点：
	- 若干字节 0 填充（padding），用于刚好覆盖到返回地址之前。
	- 覆盖的返回地址写成 `b8 89 80 00 00 00 00 00`，即小端序地址 `0x00000000008089b8`（`touch1` 的入口）。
- 含义：当 `getbuf` 返回时，`ret` 会跳到 `touch1`，即“无参数直接达成 touch1”。
- 构造过程：
	1) 通过反汇编确定 `touch1` 地址 `0x8089b8`。
	2) 计算缓冲区到返回地址的偏移（注意到 `getbuf` 函数的汇编代码中将 `%rsp` 移动了24 Bytes）。
	3) 在偏移处写入 `touch1` 地址的小端序表示。

### 2) ctarget 阶段 2（touch2）— 注入短代码设置 `%rdi`

文件：`ctarget02.txt`

- 注入的“指令字节”与语义：
	- `48 c7 c7 9f 5f 19 19`  → `mov $0x19195f9f,%rdi` 把 cookie 放入 `%rdi`
	- `48 83 c4 08`            → `add $0x8,%rsp`      调整栈顶，越过用于十六字节对齐的占位区域
	- `c3`                      → `ret`                按栈顶继续返回
- 栈上的数据与跳转：
	- 随后放置若干填充和一个 8 字节占位（注释为“`%rsp at 0x8089a6`”），供上述 `add $0x8,%rsp` 跳过。
	- 末尾写入 `touch2` 的返回地址：`e6 89 80 00 00 00 00 00`（`0x8089e6`）。
- 执行流程：
	1) `ret`（从 `getbuf`）首先跳进我们注入的字节序列。
	2) 设置 `%rdi=0x19195f9f`，`add $0x8,%rsp` 使下一次 `ret` 跳到 `touch2` 地址。
	3) 进入 `touch2(cookie)`，验证通过。
- 关键点：
	- 使用注入代码满足调用约定（`%rdi` 传参）。
	- 通过调整 `%rsp`，精确控制“下一跳”落到 `touch2`。
	- 若不进行十六字节对齐，会导致程序在 `validate` 函数内部触发 `segfault`；另有一种解决方法是使用 `_dl_relocate_static_pie@0x808030` 函数进行对齐。

### 3) ctarget 阶段 3（touch3）— 注入短代码传递“字符串参数”

文件：`ctarget03.txt`

- 重要布局元素（自低地址向高地址）：
	- Padding（覆盖到返回地址前）。
	- 将返回地址修改为指向注入代码起始处（`48 89 e7`）。
	- 栈上放置 ASCII 字符串 `31 39 31 39 35 66 39 66 00`（即 "19195f9f\0"）。
	- 注入代码：
		- `48 89 e7`        → `mov %rsp,%rdi` 将当前 `%rsp` 作为指向字符串的指针传入 `%rdi`
		- `48 83 c4 38`     → `add $0x38,%rsp` 跳过字符串与占位，令下次 `ret` 落到目标地址
		- `c3`              → `ret`
    - Padding（防止 `touch3` 和 `hexmatch` 函数破坏栈结构）
	- 末尾写入 `touch3` 返回地址：`fd 8a 80 00 00 00 00 00`（`0x808afd`）。
- 执行流程：
	1) 首次 `ret` 跳到注入代码。
	2) 令 `%rdi = %rsp`，此时 `%rsp` 指向我们刚放在栈上的 ASCII 字符串 "19195f9f\0"。
	3) 调整 `%rsp` 并 `ret`，跳入 `touch3(%rdi)`；`touch3` 内部调用 `hexmatch` 校验字符串与 cookie 一致。
- 要点与细节：
	- 字符串必须是 ASCII，可见于 `ctarget03.txt` 的字节序列。
	- 小端序只影响“地址字节”的写法，不影响 ASCII 文本本身。
	- 与阶段 2 类似，需要考虑十六字节对齐问题。
	- `touch3` 和 `hexmatch` 函数在执行时会对栈进行 `push` 操作，若不预留 padding 可能破坏我们精心构造的栈结构，导致失败。

### 4) rtarget 阶段 2（touch2, ROP）— 栈不可执行，使用 ROP 链

文件：`rtarget02.txt`

- 约束：rtarget 的栈为不可执行，不能像 ctarget 那样直接注入机器指令，只能拼 ROP gadgets。
- 选择的 gadgets（来自 `rtarget.d`）：
	- `0x0000000000808ba9` → `pop %rax; ret`
	- `0x0000000000808bd0` → `mov %rax,%rdi; ret`
	- 末尾跳到 `touch2@0x8089e6`
- ROP 链字节序（小端）：
	1) `a9 8b 80 00 00 00 00 00` → 地址 0x808ba9（pop %rax; ret）
	2) `9f 5f 19 19 00 00 00 00` → 常量 0x19195f9f（将被弹入 %rax）
	3) `d0 8b 80 00 00 00 00 00` → 地址 0x808bd0（mov %rax,%rdi; ret）
	4) `e6 89 80 00 00 00 00 00` → `touch2` 地址（最终跳转）
- 执行流程：
	1) `ret` 到 `pop %rax; ret`，把 cookie 弹入 %rax。
	2) `ret` 到 `mov %rax,%rdi; ret`，把 %rax 复制到 %rdi。
	3) `ret` 到 `touch2`，完成 `touch2(%rdi)` 调用。
- 关键点：严格控制每一步的栈内容：gadgets 地址与常量交替排布，确保每次 `ret` 都落到预期 gadget。

---

## 关键过程与方法论

- 定位地址：
	- 通过反汇编（见 `ctarget.d` / `rtarget.d`）搜索函数符号 `touch1/2/3` 与可能的 gadgets（含 `pop %r??; ret`、`mov %rax,%rdi; ret` 等）。
	- 记录目标地址后，写入攻击代码时用小端序表示。
- 计算偏移：
	- 通过观察 ctarget 中 `getbuf` 函数的汇编代码，确定缓冲区到返回地址的偏移。
	- 在 ctarget 的阶段 2/3，还要根据注入代码长度与对齐，适当在数据区插入占位与 padding，并用 `add $??,%rsp` 跨过它们。
- 保证对齐与可重复性：
	- x86-64 对十六字节对齐较为敏感，实际本实验中主要是保证 `ret` 能精确落在下一个 gadget/目标地址。
	- rtarget 场景下不向栈写入可执行字节，全部由 gadgets 组成。
- 调试：
    - 使用 gdb 调试器逐步执行，观察栈和寄存器状态，确保每一步控制流符合预期。

---

## 实验过程简述

1) 阅读 `ctarget.d`、`rtarget.d` 获取关键函数地址；用十六进制小端序记录。
2) 阶段 1：仅用 padding + `touch1` 地址覆盖返回地址，验证控制流可劫持。
3) 阶段 2：在 ctarget 中注入最小代码片段完成“%rdi=cookie”，再 `ret` 到 `touch2`。
4) 阶段 3：在 ctarget 中把 ASCII cookie 放到栈上，`mov %rsp,%rdi` 传参，再 `ret` 到 `touch3`。
5) rtarget 阶段 2：搜索 gadgets，拼出“pop %rax → mov %rax,%rdi → touch2”的 ROP 链。

---

## 实验感想与收获

- 了解了通过缓冲区溢出进行攻击的基本原理与方法。
- 理解了栈地址随机化和不可执行栈的防护机制对攻击方式的影响。
- 汇编代码的阅读能力得到了显著提升。
- 学会了通过 gdb 调试器对汇编代码进行单步调试。
- 学会了在 Linux 环境下使用 gcc 和 objdump 工具进行编译和反汇编。
- 易犯的坑：
	- 地址小端序写反
	- 十六进制计算错误
	- 忘记十六字节对齐
