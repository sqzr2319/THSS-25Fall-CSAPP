# CS:APP Data Lab 实验报告

## 1. bitXor
**目标**：用只含 `~` 与 `&` 的表达式实现按位异或。
**操作数**：8

```c
int bitXor(int x, int y) {
  /* x ^ y = (x & ~y) | (~x & y)
   * 利用德摩根：A | B = ~(~A & ~B)
   * 令 A = (~x & y), B = (x & ~y)
   * x^y = ~(~A & ~B)
   * 展开后仅使用 ~ 和 &
   */
  return ~((~(~x & y)) & (~(x & ~y)));
}
```
**思路与证明**：异或标准形式 `(x & ~y) | (~x & y)` 等价，经德摩根消去 `|`。布尔代数恒等式保证逻辑正确。

---

## 2. tmin
**目标**：返回 32 位二补最小值 0x80000000。
**操作数**：1

```c
int tmin(void) {
  /* 仅最高位为 1 的二补最小值 */
  return (1 << 31);
}
```
**思路与证明**：二补最小整数即符号位 1 其余 0。

---

## 3. isTmax
**目标**：判断 x 是否为 `0x7FFFFFFF`。
**操作数**：8

```c
int isTmax(int x) {
  /* Tmax + 1 = Tmin = ~Tmax
   * 若 x=Tmax ⇒ x^(x+1)=全1
   * x=-1 也满足，需要排除 (x+1)!=0
   */
  return (!((x ^ (x + 1)) + 1)) & (!!(x + 1));
}
```
**思路与证明**：`x^(x+1)==0xFFFFFFFF` 检测“全 1”并排除 x=-1。唯一性成立。

---

## 4. allOddBits
**目标**：判断所有奇数位 (1,3,...,31) 是否全为 1。
**操作数**：9

```c
int allOddBits(int x) {
  /* 构造 0x55555555（偶数位 1，奇数位 0）
   * 若所有奇数位为 1 ⇒ (x | 0x55555555)=0xFFFFFFFF
   */
  int constnum = 0x55; /* 01010101 */
  int mask = (constnum << 24) + (constnum << 16) + (constnum << 8) + constnum; /* 0x55555555 */
  return !((x | mask) + 1);
}
```
**思路与证明**：奇数位全 1 ⇒ 与偶数位全 1 的掩码或后得到全 1，再用 `+1` 与逻辑非判断。

---

## 5. negate
**目标**：返回 -x。
**操作数**：2

```c
int negate(int x) {
  /* 二进制补码取反加一 */
  return (~x + 1);
}
```
**思路与证明**：二进制补码定义。

---

## 6. isAsciiDigit
**目标**：判断 x 是否在 [0x30, 0x39]（'0'~'9'）。
**操作数**：12

```c
int isAsciiDigit(int x) {
  /* y = x - 0x30；需 0 <= y <= 9
   * upper_flag: y < 16  (y>>4 == 0)
   * lower_flag: 排除 10~15 的模式（这些都会触发组合表达式）
   */
  int least = x + ((~0x30) + 1);          /* x - 0x30 */
  int upper_flag = !(least >> 4);          /* y < 16 */
  int lower_flag = !(((least >> 1) | (least >> 2)) & (least >> 3)); /* y <= 9 */
  return (upper_flag & lower_flag);
}
```
**思路与证明**：利用高 4 位为 0 确保 <16，再通过低位模式布尔测试排除 10~15。

---

## 7. conditional
**目标**：实现 `x ? y : z`。
**操作数**：8

```c
int conditional(int x, int y, int z) {
  /* flag = 全1(若x!=0) 或 0(若x==0) */
  int flag = ~(!!x) + 1;  /* x!=0 → -1 */
  return (flag & y) | ((~flag) & z);
}
```
**思路与证明**：利用掩码选择。`!!x` 归一化，取负形成全 1。逻辑与三元运算等价。

---

## 8. isLessOrEqual
**目标**：判断 x <= y。
**操作数**：17

```c
int isLessOrEqual(int x, int y) {
  /* 两类：
   * (1) x<0,y>=0 ⇒ 直接真
   * (2) 同号：检查 y - x >= 0
   * 最终将“全1”映射为 1，0 映射 0
   */
  int flag1 = (x >> 31) & (~(y >> 31));
  int samesign = ~((x >> 31) ^ (y >> 31));
  int flag2 = (~((y + (~x + 1)) >> 31)) & samesign; /* diff>=0 且同号 */
  return (~(flag1 | flag2) + 1);
}
```
**思路与证明**：分别处理异号与同号。`y - x` 的符号位区分大小关系。转换返回布尔值。

---

## 9. logicalNeg
**目标**：实现 `!x`。
**操作数**：12

```c
int logicalNeg(int x) {
  /* 逐级 OR 扩散任意 1 位到最高位；非 0 → 最高位 1 → (>>31)=-1 → +1=0 */
  int x_16 = x | (x << 16);
  int x_8  = x_16 | (x_16 << 8);
  int x_4  = x_8 | (x_8 << 4);
  int x_2  = x_4 | (x_4 << 2);
  int x_1  = x_2 | (x_2 << 1);
  return (x_1 >> 31) + 1;
}
```
**思路与证明**：若 x=0 不会引入 1；否则扩散后符号位为 1，借算术右移生成 -1，再加 1→0。

---

## 10. howManyBits
**目标**：返回最少需要多少位表示 x（含符号位）。
**操作数**：42

```c
int howManyBits(int x) {
  /* 对负数取 ~x 以统一找“最高 1” 的位置
   * 二分探测：16,8,4,2,1,0 分级
   * ans 初始为 1（符号位）
   */
  int ans = 1;
  int sign = x >> 31;
  int y = (sign & ~x) | (~sign & x);
  int flag_16 = !!(y >> 16); int y_16 = y >> (flag_16 << 4);
  int flag_8  = !!(y_16 >> 8); int y_8 = y_16 >> (flag_8 << 3);
  int flag_4  = !!(y_8 >> 4);  int y_4 = y_8 >> (flag_4 << 2);
  int flag_2  = !!(y_4 >> 2);  int y_2 = y_4 >> (flag_2 << 1);
  int flag_1  = !!(y_2 >> 1);  int y_1 = y_2 >> flag_1;
  int flag_0  = !!y_1;
  ans = ans + (flag_16 << 4) + (flag_8 << 3) + (flag_4 << 2) + (flag_2 << 1) + flag_1 + flag_0;
  return ans;
}
```
**思路与证明**：二分定位最高 1 位索引 k，结果 = k+1 (数值位) + 1 (符号位)；对 0 和 -1 返回 1；对 Tmin 得 32。逻辑覆盖完整。

---

## 11. floatScale2
**目标**：返回浮点数 f 的 2*f（位级）。
**操作数**：19

```c
unsigned floatScale2(unsigned uf) {
  /* 分类：NaN/Inf；规格化；非规格化；临界上溢
   * 通过指数域与尾数域检测，不改变原符号位
   */
  unsigned nan_mask = 0xFF << 23;
  unsigned overflow_mask_1 = 0xFE << 23; /* 指数=254 */
  unsigned overflow_mask_2 = 0xFF7FFFFF; /* 尾数全 1 测试辅助 */
  unsigned normal_mask = 0x7F800000;     /* 指数域 */
  if ((uf & nan_mask) == nan_mask)               /* NaN/Inf */
    return uf;
  if (((uf & overflow_mask_1) == overflow_mask_1) && ((uf | overflow_mask_2) == overflow_mask_2))
    return ((uf | (1 << 23)) & 0xFF800000);      /* 变成 Inf */
  if ((uf & normal_mask) != 0)                   /* 规格化：指数+1 */
    return uf + (1 << 23);
  return (uf & 0x80000000) | (uf << 1);          /* 非规格化左移 */
}
```
**思路与证明**：遵循 IEEE754：规格化指数+1；非规格化尾数左移；溢出转 Inf；NaN/Inf 原样返回。

---

## 12. floatFloat2Int
**目标**：将浮点 f 转为 int；超范围 / NaN / Inf 返回 0x80000000u。
**操作数**：19

```c
int floatFloat2Int(unsigned uf) {
  /* 抽取并偏移指数；构造整数部分 (1.frac)*2^e
   * e>=31 溢出；e<0 结果 0；其余累加尾数位
   */
  int nan_mask = 0xFF;
  int exp = ((uf >> 23) & nan_mask) - 127;
  int ans = 1 << exp;     /* 隐含的 leading 1 */
  int i = exp - 1;
  if (exp >= 31)
    return 0x80000000u;   /* 溢出 / NaN / Inf */
  if (exp < 0)
    return 0;              /* |f| < 1 */
  for (; i >= 0; i--)
    ans = ans + (((uf >> (i + 23 - exp)) & 1) << i); /* 累加尾数 */
  if ((uf >> 31) & 1)
    return ~ans + 1;       /* 负号 */
  return ans;
}
```
**思路与证明**：手动重建整数部分；指数范围控制正确映射。

---

## 13. floatPower2
**目标**：返回 2.0^x 的浮点编码。
**操作数**：9

```c
unsigned floatPower2(int x) {
  /* 范围分类：
   * x > 127  溢出 → +Inf
   * x < -149 次正规最小值以下 → 0
   * -126 ≤ x ≤ 127 规格化 → (x+127)<<23
   * 其余 (-149 ≤ x < -126) 非规格化 → 1 << (x + 149)
   */
  if (x >= 128)
    return 0x7F800000;
  if (x <= -150)
    return 0;
  if (x >= -126)
    return (x + 127) << 23;
  return 1 << (x + 149);
}
```
**思路与证明**：直接按 IEEE754 非规格化与规格化边界 (-149, -126) 分类计算指数或尾数位。
