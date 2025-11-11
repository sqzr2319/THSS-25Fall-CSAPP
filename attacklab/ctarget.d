
ctarget:     file format elf64-x86-64


Disassembly of section .text:

0000000000808000 <_start>:
  808000:	31 ed                	xor    %ebp,%ebp
  808002:	49 89 d1             	mov    %rdx,%r9
  808005:	5e                   	pop    %rsi
  808006:	48 89 e2             	mov    %rsp,%rdx
  808009:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  80800d:	50                   	push   %rax
  80800e:	54                   	push   %rsp
  80800f:	49 c7 c0 60 a0 80 00 	mov    $0x80a060,%r8
  808016:	48 c7 c1 f0 9f 80 00 	mov    $0x809ff0,%rcx
  80801d:	48 c7 c7 81 82 80 00 	mov    $0x808281,%rdi
  808024:	ff 15 c6 3f 20 00    	call   *0x203fc6(%rip)        # a0bff0 <__libc_start_main@GLIBC_2.2.5>
  80802a:	f4                   	hlt
  80802b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000808030 <_dl_relocate_static_pie>:
  808030:	f3 c3                	repz ret
  808032:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  808039:	00 00 00 
  80803c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000808040 <deregister_tm_clones>:
  808040:	55                   	push   %rbp
  808041:	b8 98 c4 a0 00       	mov    $0xa0c498,%eax
  808046:	48 3d 98 c4 a0 00    	cmp    $0xa0c498,%rax
  80804c:	48 89 e5             	mov    %rsp,%rbp
  80804f:	74 17                	je     808068 <deregister_tm_clones+0x28>
  808051:	b8 00 00 00 00       	mov    $0x0,%eax
  808056:	48 85 c0             	test   %rax,%rax
  808059:	74 0d                	je     808068 <deregister_tm_clones+0x28>
  80805b:	5d                   	pop    %rbp
  80805c:	bf 98 c4 a0 00       	mov    $0xa0c498,%edi
  808061:	ff e0                	jmp    *%rax
  808063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  808068:	5d                   	pop    %rbp
  808069:	c3                   	ret
  80806a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000808070 <register_tm_clones>:
  808070:	be 98 c4 a0 00       	mov    $0xa0c498,%esi
  808075:	55                   	push   %rbp
  808076:	48 81 ee 98 c4 a0 00 	sub    $0xa0c498,%rsi
  80807d:	48 89 e5             	mov    %rsp,%rbp
  808080:	48 c1 fe 03          	sar    $0x3,%rsi
  808084:	48 89 f0             	mov    %rsi,%rax
  808087:	48 c1 e8 3f          	shr    $0x3f,%rax
  80808b:	48 01 c6             	add    %rax,%rsi
  80808e:	48 d1 fe             	sar    $1,%rsi
  808091:	74 15                	je     8080a8 <register_tm_clones+0x38>
  808093:	b8 00 00 00 00       	mov    $0x0,%eax
  808098:	48 85 c0             	test   %rax,%rax
  80809b:	74 0b                	je     8080a8 <register_tm_clones+0x38>
  80809d:	5d                   	pop    %rbp
  80809e:	bf 98 c4 a0 00       	mov    $0xa0c498,%edi
  8080a3:	ff e0                	jmp    *%rax
  8080a5:	0f 1f 00             	nopl   (%rax)
  8080a8:	5d                   	pop    %rbp
  8080a9:	c3                   	ret
  8080aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000008080b0 <__do_global_dtors_aux>:
  8080b0:	80 3d 11 44 20 00 00 	cmpb   $0x0,0x204411(%rip)        # a0c4c8 <completed.7698>
  8080b7:	75 17                	jne    8080d0 <__do_global_dtors_aux+0x20>
  8080b9:	55                   	push   %rbp
  8080ba:	48 89 e5             	mov    %rsp,%rbp
  8080bd:	e8 7e ff ff ff       	call   808040 <deregister_tm_clones>
  8080c2:	c6 05 ff 43 20 00 01 	movb   $0x1,0x2043ff(%rip)        # a0c4c8 <completed.7698>
  8080c9:	5d                   	pop    %rbp
  8080ca:	c3                   	ret
  8080cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  8080d0:	f3 c3                	repz ret
  8080d2:	0f 1f 40 00          	nopl   0x0(%rax)
  8080d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  8080dd:	00 00 00 

00000000008080e0 <frame_dummy>:
  8080e0:	55                   	push   %rbp
  8080e1:	48 89 e5             	mov    %rsp,%rbp
  8080e4:	5d                   	pop    %rbp
  8080e5:	eb 89                	jmp    808070 <register_tm_clones>

00000000008080e7 <usage>:
  8080e7:	48 83 ec 08          	sub    $0x8,%rsp
  8080eb:	48 89 fa             	mov    %rdi,%rdx
  8080ee:	83 3d 13 44 20 00 00 	cmpl   $0x0,0x204413(%rip)        # a0c508 <is_checker>
  8080f5:	74 50                	je     808147 <usage+0x60>
  8080f7:	48 8d 35 7a 1f 00 00 	lea    0x1f7a(%rip),%rsi        # 80a078 <_IO_stdin_used+0x8>
  8080fe:	bf 01 00 00 00       	mov    $0x1,%edi
  808103:	b8 00 00 00 00       	mov    $0x0,%eax
  808108:	e8 d3 8c bf ff       	call   400de0 <__printf_chk@plt>
  80810d:	48 8d 3d 9c 1f 00 00 	lea    0x1f9c(%rip),%rdi        # 80a0b0 <_IO_stdin_used+0x40>
  808114:	e8 a7 8b bf ff       	call   400cc0 <puts@plt>
  808119:	48 8d 3d 90 20 00 00 	lea    0x2090(%rip),%rdi        # 80a1b0 <_IO_stdin_used+0x140>
  808120:	e8 9b 8b bf ff       	call   400cc0 <puts@plt>
  808125:	48 8d 3d ac 1f 00 00 	lea    0x1fac(%rip),%rdi        # 80a0d8 <_IO_stdin_used+0x68>
  80812c:	e8 8f 8b bf ff       	call   400cc0 <puts@plt>
  808131:	48 8d 3d 92 20 00 00 	lea    0x2092(%rip),%rdi        # 80a1ca <_IO_stdin_used+0x15a>
  808138:	e8 83 8b bf ff       	call   400cc0 <puts@plt>
  80813d:	bf 00 00 00 00       	mov    $0x0,%edi
  808142:	e8 d9 8c bf ff       	call   400e20 <exit@plt>
  808147:	48 8d 35 98 20 00 00 	lea    0x2098(%rip),%rsi        # 80a1e6 <_IO_stdin_used+0x176>
  80814e:	bf 01 00 00 00       	mov    $0x1,%edi
  808153:	b8 00 00 00 00       	mov    $0x0,%eax
  808158:	e8 83 8c bf ff       	call   400de0 <__printf_chk@plt>
  80815d:	48 8d 3d 9c 1f 00 00 	lea    0x1f9c(%rip),%rdi        # 80a100 <_IO_stdin_used+0x90>
  808164:	e8 57 8b bf ff       	call   400cc0 <puts@plt>
  808169:	48 8d 3d b8 1f 00 00 	lea    0x1fb8(%rip),%rdi        # 80a128 <_IO_stdin_used+0xb8>
  808170:	e8 4b 8b bf ff       	call   400cc0 <puts@plt>
  808175:	48 8d 3d 88 20 00 00 	lea    0x2088(%rip),%rdi        # 80a204 <_IO_stdin_used+0x194>
  80817c:	e8 3f 8b bf ff       	call   400cc0 <puts@plt>
  808181:	eb ba                	jmp    80813d <usage+0x56>

0000000000808183 <initialize_target>:
  808183:	55                   	push   %rbp
  808184:	53                   	push   %rbx
  808185:	48 81 ec 18 20 00 00 	sub    $0x2018,%rsp
  80818c:	89 f5                	mov    %esi,%ebp
  80818e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808195:	00 00 
  808197:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  80819e:	00 
  80819f:	31 c0                	xor    %eax,%eax
  8081a1:	89 3d 51 43 20 00    	mov    %edi,0x204351(%rip)        # a0c4f8 <check_level>
  8081a7:	8b 3d 83 3f 20 00    	mov    0x203f83(%rip),%edi        # a0c130 <target_id>
  8081ad:	e8 1c 1e 00 00       	call   809fce <gencookie>
  8081b2:	89 05 4c 43 20 00    	mov    %eax,0x20434c(%rip)        # a0c504 <cookie>
  8081b8:	89 c7                	mov    %eax,%edi
  8081ba:	e8 0f 1e 00 00       	call   809fce <gencookie>
  8081bf:	89 05 3b 43 20 00    	mov    %eax,0x20433b(%rip)        # a0c500 <authkey>
  8081c5:	8b 05 65 3f 20 00    	mov    0x203f65(%rip),%eax        # a0c130 <target_id>
  8081cb:	8d 78 01             	lea    0x1(%rax),%edi
  8081ce:	e8 bd 8a bf ff       	call   400c90 <srandom@plt>
  8081d3:	e8 c8 8b bf ff       	call   400da0 <random@plt>
  8081d8:	89 c7                	mov    %eax,%edi
  8081da:	e8 8d 02 00 00       	call   80846c <scramble>
  8081df:	89 c3                	mov    %eax,%ebx
  8081e1:	85 ed                	test   %ebp,%ebp
  8081e3:	75 50                	jne    808235 <initialize_target+0xb2>
  8081e5:	b8 00 00 00 00       	mov    $0x0,%eax
  8081ea:	01 d8                	add    %ebx,%eax
  8081ec:	0f b7 c0             	movzwl %ax,%eax
  8081ef:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  8081f6:	89 c0                	mov    %eax,%eax
  8081f8:	48 89 05 91 42 20 00 	mov    %rax,0x204291(%rip)        # a0c490 <buf_offset>
  8081ff:	c6 05 2a 4f 20 00 63 	movb   $0x63,0x204f2a(%rip)        # a0d130 <target_prefix>
  808206:	83 3d 7b 42 20 00 00 	cmpl   $0x0,0x20427b(%rip)        # a0c488 <notify>
  80820d:	74 09                	je     808218 <initialize_target+0x95>
  80820f:	83 3d f2 42 20 00 00 	cmpl   $0x0,0x2042f2(%rip)        # a0c508 <is_checker>
  808216:	74 35                	je     80824d <initialize_target+0xca>
  808218:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  80821f:	00 
  808220:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808227:	00 00 
  808229:	75 51                	jne    80827c <initialize_target+0xf9>
  80822b:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  808232:	5b                   	pop    %rbx
  808233:	5d                   	pop    %rbp
  808234:	c3                   	ret
  808235:	bf 00 00 00 00       	mov    $0x0,%edi
  80823a:	e8 51 8b bf ff       	call   400d90 <time@plt>
  80823f:	89 c7                	mov    %eax,%edi
  808241:	e8 4a 8a bf ff       	call   400c90 <srandom@plt>
  808246:	e8 55 8b bf ff       	call   400da0 <random@plt>
  80824b:	eb 9d                	jmp    8081ea <initialize_target+0x67>
  80824d:	48 89 e7             	mov    %rsp,%rdi
  808250:	e8 a9 1a 00 00       	call   809cfe <init_driver>
  808255:	85 c0                	test   %eax,%eax
  808257:	79 bf                	jns    808218 <initialize_target+0x95>
  808259:	48 89 e2             	mov    %rsp,%rdx
  80825c:	48 8d 35 f5 1e 00 00 	lea    0x1ef5(%rip),%rsi        # 80a158 <_IO_stdin_used+0xe8>
  808263:	bf 01 00 00 00       	mov    $0x1,%edi
  808268:	b8 00 00 00 00       	mov    $0x0,%eax
  80826d:	e8 6e 8b bf ff       	call   400de0 <__printf_chk@plt>
  808272:	bf 08 00 00 00       	mov    $0x8,%edi
  808277:	e8 a4 8b bf ff       	call   400e20 <exit@plt>
  80827c:	e8 5f 8a bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000808281 <main>:
  808281:	41 56                	push   %r14
  808283:	41 55                	push   %r13
  808285:	41 54                	push   %r12
  808287:	55                   	push   %rbp
  808288:	53                   	push   %rbx
  808289:	41 89 fc             	mov    %edi,%r12d
  80828c:	48 89 f3             	mov    %rsi,%rbx
  80828f:	48 c7 c6 05 90 80 00 	mov    $0x809005,%rsi
  808296:	bf 0b 00 00 00       	mov    $0xb,%edi
  80829b:	e8 a0 8a bf ff       	call   400d40 <signal@plt>
  8082a0:	48 c7 c6 b1 8f 80 00 	mov    $0x808fb1,%rsi
  8082a7:	bf 07 00 00 00       	mov    $0x7,%edi
  8082ac:	e8 8f 8a bf ff       	call   400d40 <signal@plt>
  8082b1:	48 c7 c6 59 90 80 00 	mov    $0x809059,%rsi
  8082b8:	bf 04 00 00 00       	mov    $0x4,%edi
  8082bd:	e8 7e 8a bf ff       	call   400d40 <signal@plt>
  8082c2:	83 3d 3f 42 20 00 00 	cmpl   $0x0,0x20423f(%rip)        # a0c508 <is_checker>
  8082c9:	75 26                	jne    8082f1 <main+0x70>
  8082cb:	48 8d 2d 4b 1f 00 00 	lea    0x1f4b(%rip),%rbp        # 80a21d <_IO_stdin_used+0x1ad>
  8082d2:	48 8b 05 c7 41 20 00 	mov    0x2041c7(%rip),%rax        # a0c4a0 <stdin@GLIBC_2.2.5>
  8082d9:	48 89 05 10 42 20 00 	mov    %rax,0x204210(%rip)        # a0c4f0 <infile>
  8082e0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  8082e6:	41 be 00 00 00 00    	mov    $0x0,%r14d
  8082ec:	e9 8d 00 00 00       	jmp    80837e <main+0xfd>
  8082f1:	48 c7 c6 ad 90 80 00 	mov    $0x8090ad,%rsi
  8082f8:	bf 0e 00 00 00       	mov    $0xe,%edi
  8082fd:	e8 3e 8a bf ff       	call   400d40 <signal@plt>
  808302:	bf 05 00 00 00       	mov    $0x5,%edi
  808307:	e8 04 8a bf ff       	call   400d10 <alarm@plt>
  80830c:	48 8d 2d 0f 1f 00 00 	lea    0x1f0f(%rip),%rbp        # 80a222 <_IO_stdin_used+0x1b2>
  808313:	eb bd                	jmp    8082d2 <main+0x51>
  808315:	48 8b 3b             	mov    (%rbx),%rdi
  808318:	e8 ca fd ff ff       	call   8080e7 <usage>
  80831d:	48 8d 35 71 21 00 00 	lea    0x2171(%rip),%rsi        # 80a495 <_IO_stdin_used+0x425>
  808324:	48 8b 3d 7d 41 20 00 	mov    0x20417d(%rip),%rdi        # a0c4a8 <optarg@GLIBC_2.2.5>
  80832b:	e8 c0 8a bf ff       	call   400df0 <fopen@plt>
  808330:	48 89 05 b9 41 20 00 	mov    %rax,0x2041b9(%rip)        # a0c4f0 <infile>
  808337:	48 85 c0             	test   %rax,%rax
  80833a:	75 42                	jne    80837e <main+0xfd>
  80833c:	48 8b 0d 65 41 20 00 	mov    0x204165(%rip),%rcx        # a0c4a8 <optarg@GLIBC_2.2.5>
  808343:	48 8d 15 e0 1e 00 00 	lea    0x1ee0(%rip),%rdx        # 80a22a <_IO_stdin_used+0x1ba>
  80834a:	be 01 00 00 00       	mov    $0x1,%esi
  80834f:	48 8b 3d 6a 41 20 00 	mov    0x20416a(%rip),%rdi        # a0c4c0 <stderr@GLIBC_2.2.5>
  808356:	e8 e5 8a bf ff       	call   400e40 <__fprintf_chk@plt>
  80835b:	b8 01 00 00 00       	mov    $0x1,%eax
  808360:	e9 d9 00 00 00       	jmp    80843e <main+0x1bd>
  808365:	ba 10 00 00 00       	mov    $0x10,%edx
  80836a:	be 00 00 00 00       	mov    $0x0,%esi
  80836f:	48 8b 3d 32 41 20 00 	mov    0x204132(%rip),%rdi        # a0c4a8 <optarg@GLIBC_2.2.5>
  808376:	e8 95 8a bf ff       	call   400e10 <strtoul@plt>
  80837b:	41 89 c6             	mov    %eax,%r14d
  80837e:	48 89 ea             	mov    %rbp,%rdx
  808381:	48 89 de             	mov    %rbx,%rsi
  808384:	44 89 e7             	mov    %r12d,%edi
  808387:	e8 74 8a bf ff       	call   400e00 <getopt@plt>
  80838c:	3c ff                	cmp    $0xff,%al
  80838e:	74 62                	je     8083f2 <main+0x171>
  808390:	0f be d0             	movsbl %al,%edx
  808393:	83 e8 61             	sub    $0x61,%eax
  808396:	3c 10                	cmp    $0x10,%al
  808398:	77 3a                	ja     8083d4 <main+0x153>
  80839a:	0f b6 c0             	movzbl %al,%eax
  80839d:	48 8d 0d c4 1e 00 00 	lea    0x1ec4(%rip),%rcx        # 80a268 <_IO_stdin_used+0x1f8>
  8083a4:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  8083a8:	48 01 c8             	add    %rcx,%rax
  8083ab:	ff e0                	jmp    *%rax
  8083ad:	ba 0a 00 00 00       	mov    $0xa,%edx
  8083b2:	be 00 00 00 00       	mov    $0x0,%esi
  8083b7:	48 8b 3d ea 40 20 00 	mov    0x2040ea(%rip),%rdi        # a0c4a8 <optarg@GLIBC_2.2.5>
  8083be:	e8 ad 89 bf ff       	call   400d70 <strtol@plt>
  8083c3:	41 89 c5             	mov    %eax,%r13d
  8083c6:	eb b6                	jmp    80837e <main+0xfd>
  8083c8:	c7 05 b6 40 20 00 00 	movl   $0x0,0x2040b6(%rip)        # a0c488 <notify>
  8083cf:	00 00 00 
  8083d2:	eb aa                	jmp    80837e <main+0xfd>
  8083d4:	48 8d 35 6c 1e 00 00 	lea    0x1e6c(%rip),%rsi        # 80a247 <_IO_stdin_used+0x1d7>
  8083db:	bf 01 00 00 00       	mov    $0x1,%edi
  8083e0:	b8 00 00 00 00       	mov    $0x0,%eax
  8083e5:	e8 f6 89 bf ff       	call   400de0 <__printf_chk@plt>
  8083ea:	48 8b 3b             	mov    (%rbx),%rdi
  8083ed:	e8 f5 fc ff ff       	call   8080e7 <usage>
  8083f2:	be 00 00 00 00       	mov    $0x0,%esi
  8083f7:	44 89 ef             	mov    %r13d,%edi
  8083fa:	e8 84 fd ff ff       	call   808183 <initialize_target>
  8083ff:	83 3d 02 41 20 00 00 	cmpl   $0x0,0x204102(%rip)        # a0c508 <is_checker>
  808406:	74 09                	je     808411 <main+0x190>
  808408:	44 39 35 f1 40 20 00 	cmp    %r14d,0x2040f1(%rip)        # a0c500 <authkey>
  80840f:	75 36                	jne    808447 <main+0x1c6>
  808411:	8b 15 ed 40 20 00    	mov    0x2040ed(%rip),%edx        # a0c504 <cookie>
  808417:	48 8d 35 3c 1e 00 00 	lea    0x1e3c(%rip),%rsi        # 80a25a <_IO_stdin_used+0x1ea>
  80841e:	bf 01 00 00 00       	mov    $0x1,%edi
  808423:	b8 00 00 00 00       	mov    $0x0,%eax
  808428:	e8 b3 89 bf ff       	call   400de0 <__printf_chk@plt>
  80842d:	48 8b 3d 5c 40 20 00 	mov    0x20405c(%rip),%rdi        # a0c490 <buf_offset>
  808434:	e8 80 0d 00 00       	call   8091b9 <stable_launch>
  808439:	b8 00 00 00 00       	mov    $0x0,%eax
  80843e:	5b                   	pop    %rbx
  80843f:	5d                   	pop    %rbp
  808440:	41 5c                	pop    %r12
  808442:	41 5d                	pop    %r13
  808444:	41 5e                	pop    %r14
  808446:	c3                   	ret
  808447:	44 89 f2             	mov    %r14d,%edx
  80844a:	48 8d 35 2f 1d 00 00 	lea    0x1d2f(%rip),%rsi        # 80a180 <_IO_stdin_used+0x110>
  808451:	bf 01 00 00 00       	mov    $0x1,%edi
  808456:	b8 00 00 00 00       	mov    $0x0,%eax
  80845b:	e8 80 89 bf ff       	call   400de0 <__printf_chk@plt>
  808460:	b8 00 00 00 00       	mov    $0x0,%eax
  808465:	e8 a0 07 00 00       	call   808c0a <check_fail>
  80846a:	eb a5                	jmp    808411 <main+0x190>

000000000080846c <scramble>:
  80846c:	48 83 ec 38          	sub    $0x38,%rsp
  808470:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808477:	00 00 
  808479:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  80847e:	31 c0                	xor    %eax,%eax
  808480:	eb 10                	jmp    808492 <scramble+0x26>
  808482:	69 d0 c4 7c 00 00    	imul   $0x7cc4,%eax,%edx
  808488:	01 fa                	add    %edi,%edx
  80848a:	89 c1                	mov    %eax,%ecx
  80848c:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  80848f:	83 c0 01             	add    $0x1,%eax
  808492:	83 f8 09             	cmp    $0x9,%eax
  808495:	76 eb                	jbe    808482 <scramble+0x16>
  808497:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  80849b:	69 c0 77 3e 00 00    	imul   $0x3e77,%eax,%eax
  8084a1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8084a5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8084a9:	69 c0 02 a5 00 00    	imul   $0xa502,%eax,%eax
  8084af:	89 44 24 04          	mov    %eax,0x4(%rsp)
  8084b3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8084b7:	69 c0 52 ec 00 00    	imul   $0xec52,%eax,%eax
  8084bd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8084c1:	8b 04 24             	mov    (%rsp),%eax
  8084c4:	69 c0 97 39 00 00    	imul   $0x3997,%eax,%eax
  8084ca:	89 04 24             	mov    %eax,(%rsp)
  8084cd:	8b 44 24 20          	mov    0x20(%rsp),%eax
  8084d1:	69 c0 81 7d 00 00    	imul   $0x7d81,%eax,%eax
  8084d7:	89 44 24 20          	mov    %eax,0x20(%rsp)
  8084db:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8084df:	01 c0                	add    %eax,%eax
  8084e1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8084e5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8084e9:	69 c0 e5 ba 00 00    	imul   $0xbae5,%eax,%eax
  8084ef:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8084f3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  8084f7:	69 c0 9b c2 00 00    	imul   $0xc29b,%eax,%eax
  8084fd:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808501:	8b 44 24 20          	mov    0x20(%rsp),%eax
  808505:	69 c0 ca 95 00 00    	imul   $0x95ca,%eax,%eax
  80850b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  80850f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  808513:	69 c0 f9 b1 00 00    	imul   $0xb1f9,%eax,%eax
  808519:	89 44 24 10          	mov    %eax,0x10(%rsp)
  80851d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808521:	69 c0 22 b0 00 00    	imul   $0xb022,%eax,%eax
  808527:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80852b:	8b 04 24             	mov    (%rsp),%eax
  80852e:	69 c0 db 0d 00 00    	imul   $0xddb,%eax,%eax
  808534:	89 04 24             	mov    %eax,(%rsp)
  808537:	8b 44 24 04          	mov    0x4(%rsp),%eax
  80853b:	69 c0 09 ce 00 00    	imul   $0xce09,%eax,%eax
  808541:	89 44 24 04          	mov    %eax,0x4(%rsp)
  808545:	8b 04 24             	mov    (%rsp),%eax
  808548:	69 c0 dc 21 00 00    	imul   $0x21dc,%eax,%eax
  80854e:	89 04 24             	mov    %eax,(%rsp)
  808551:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808555:	69 c0 03 0f 00 00    	imul   $0xf03,%eax,%eax
  80855b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  80855f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  808563:	69 c0 be bd 00 00    	imul   $0xbdbe,%eax,%eax
  808569:	89 44 24 20          	mov    %eax,0x20(%rsp)
  80856d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808571:	69 c0 48 a9 00 00    	imul   $0xa948,%eax,%eax
  808577:	89 44 24 24          	mov    %eax,0x24(%rsp)
  80857b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  80857f:	69 c0 49 1a 00 00    	imul   $0x1a49,%eax,%eax
  808585:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808589:	8b 44 24 24          	mov    0x24(%rsp),%eax
  80858d:	69 c0 ab bb 00 00    	imul   $0xbbab,%eax,%eax
  808593:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808597:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80859b:	69 c0 e9 32 00 00    	imul   $0x32e9,%eax,%eax
  8085a1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  8085a5:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8085a9:	69 c0 e3 b6 00 00    	imul   $0xb6e3,%eax,%eax
  8085af:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8085b3:	8b 04 24             	mov    (%rsp),%eax
  8085b6:	69 c0 7c db 00 00    	imul   $0xdb7c,%eax,%eax
  8085bc:	89 04 24             	mov    %eax,(%rsp)
  8085bf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8085c3:	69 c0 05 16 00 00    	imul   $0x1605,%eax,%eax
  8085c9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8085cd:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8085d1:	69 c0 27 d3 00 00    	imul   $0xd327,%eax,%eax
  8085d7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8085db:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8085df:	69 c0 67 b3 00 00    	imul   $0xb367,%eax,%eax
  8085e5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8085e9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8085ed:	69 c0 79 2c 00 00    	imul   $0x2c79,%eax,%eax
  8085f3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8085f7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  8085fb:	69 c0 da e8 00 00    	imul   $0xe8da,%eax,%eax
  808601:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808605:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808609:	69 c0 3b ac 00 00    	imul   $0xac3b,%eax,%eax
  80860f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808613:	8b 44 24 20          	mov    0x20(%rsp),%eax
  808617:	69 c0 fa 2b 00 00    	imul   $0x2bfa,%eax,%eax
  80861d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808621:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  808625:	69 c0 dd f7 00 00    	imul   $0xf7dd,%eax,%eax
  80862b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  80862f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  808633:	69 c0 93 4f 00 00    	imul   $0x4f93,%eax,%eax
  808639:	89 44 24 20          	mov    %eax,0x20(%rsp)
  80863d:	8b 04 24             	mov    (%rsp),%eax
  808640:	69 c0 77 88 00 00    	imul   $0x8877,%eax,%eax
  808646:	89 04 24             	mov    %eax,(%rsp)
  808649:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  80864d:	69 c0 5d 18 00 00    	imul   $0x185d,%eax,%eax
  808653:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  808657:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80865b:	69 c0 77 8e 00 00    	imul   $0x8e77,%eax,%eax
  808661:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808665:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808669:	69 c0 a2 f6 00 00    	imul   $0xf6a2,%eax,%eax
  80866f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808673:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808677:	69 c0 35 0d 00 00    	imul   $0xd35,%eax,%eax
  80867d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808681:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808685:	69 c0 4b f4 00 00    	imul   $0xf44b,%eax,%eax
  80868b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  80868f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808693:	69 c0 4e 1f 00 00    	imul   $0x1f4e,%eax,%eax
  808699:	89 44 24 18          	mov    %eax,0x18(%rsp)
  80869d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8086a1:	69 c0 c8 86 00 00    	imul   $0x86c8,%eax,%eax
  8086a7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8086ab:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8086af:	69 c0 20 b6 00 00    	imul   $0xb620,%eax,%eax
  8086b5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8086b9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8086bd:	69 c0 96 77 00 00    	imul   $0x7796,%eax,%eax
  8086c3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8086c7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8086cb:	69 c0 b8 9d 00 00    	imul   $0x9db8,%eax,%eax
  8086d1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8086d5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8086d9:	69 c0 ee 1c 00 00    	imul   $0x1cee,%eax,%eax
  8086df:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8086e3:	8b 44 24 10          	mov    0x10(%rsp),%eax
  8086e7:	69 c0 54 17 00 00    	imul   $0x1754,%eax,%eax
  8086ed:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8086f1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  8086f5:	69 c0 0b 18 00 00    	imul   $0x180b,%eax,%eax
  8086fb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8086ff:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808703:	69 c0 e5 83 00 00    	imul   $0x83e5,%eax,%eax
  808709:	89 44 24 24          	mov    %eax,0x24(%rsp)
  80870d:	8b 04 24             	mov    (%rsp),%eax
  808710:	69 c0 ce c4 00 00    	imul   $0xc4ce,%eax,%eax
  808716:	89 04 24             	mov    %eax,(%rsp)
  808719:	8b 44 24 14          	mov    0x14(%rsp),%eax
  80871d:	69 c0 7b 60 00 00    	imul   $0x607b,%eax,%eax
  808723:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808727:	8b 44 24 20          	mov    0x20(%rsp),%eax
  80872b:	69 c0 1d af 00 00    	imul   $0xaf1d,%eax,%eax
  808731:	89 44 24 20          	mov    %eax,0x20(%rsp)
  808735:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808739:	69 c0 33 b1 00 00    	imul   $0xb133,%eax,%eax
  80873f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808743:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808747:	69 c0 52 b0 00 00    	imul   $0xb052,%eax,%eax
  80874d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808751:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808755:	69 c0 45 53 00 00    	imul   $0x5345,%eax,%eax
  80875b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80875f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808763:	69 c0 19 a7 00 00    	imul   $0xa719,%eax,%eax
  808769:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80876d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808771:	69 c0 ee ae 00 00    	imul   $0xaeee,%eax,%eax
  808777:	89 44 24 24          	mov    %eax,0x24(%rsp)
  80877b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  80877f:	69 c0 08 65 00 00    	imul   $0x6508,%eax,%eax
  808785:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808789:	8b 44 24 24          	mov    0x24(%rsp),%eax
  80878d:	69 c0 10 68 00 00    	imul   $0x6810,%eax,%eax
  808793:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808797:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80879b:	69 c0 a7 47 00 00    	imul   $0x47a7,%eax,%eax
  8087a1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8087a5:	8b 44 24 24          	mov    0x24(%rsp),%eax
  8087a9:	69 c0 10 3d 00 00    	imul   $0x3d10,%eax,%eax
  8087af:	89 44 24 24          	mov    %eax,0x24(%rsp)
  8087b3:	8b 44 24 10          	mov    0x10(%rsp),%eax
  8087b7:	69 c0 bc 4f 00 00    	imul   $0x4fbc,%eax,%eax
  8087bd:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8087c1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8087c5:	69 c0 7d ad 00 00    	imul   $0xad7d,%eax,%eax
  8087cb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  8087cf:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8087d3:	69 c0 96 63 00 00    	imul   $0x6396,%eax,%eax
  8087d9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8087dd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  8087e1:	69 c0 66 cf 00 00    	imul   $0xcf66,%eax,%eax
  8087e7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8087eb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8087ef:	69 c0 bf 3d 00 00    	imul   $0x3dbf,%eax,%eax
  8087f5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8087f9:	8b 04 24             	mov    (%rsp),%eax
  8087fc:	69 c0 8f 05 00 00    	imul   $0x58f,%eax,%eax
  808802:	89 04 24             	mov    %eax,(%rsp)
  808805:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808809:	69 c0 d3 1e 00 00    	imul   $0x1ed3,%eax,%eax
  80880f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  808813:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808817:	69 c0 9c 92 00 00    	imul   $0x929c,%eax,%eax
  80881d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808821:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808825:	69 c0 2b 75 00 00    	imul   $0x752b,%eax,%eax
  80882b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80882f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808833:	69 c0 c3 73 00 00    	imul   $0x73c3,%eax,%eax
  808839:	89 44 24 24          	mov    %eax,0x24(%rsp)
  80883d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808841:	69 c0 74 58 00 00    	imul   $0x5874,%eax,%eax
  808847:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80884b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  80884f:	69 c0 26 4a 00 00    	imul   $0x4a26,%eax,%eax
  808855:	89 44 24 18          	mov    %eax,0x18(%rsp)
  808859:	8b 44 24 24          	mov    0x24(%rsp),%eax
  80885d:	69 c0 bf 87 00 00    	imul   $0x87bf,%eax,%eax
  808863:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808867:	8b 44 24 10          	mov    0x10(%rsp),%eax
  80886b:	69 c0 1b 9a 00 00    	imul   $0x9a1b,%eax,%eax
  808871:	89 44 24 10          	mov    %eax,0x10(%rsp)
  808875:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  808879:	69 c0 ff b7 00 00    	imul   $0xb7ff,%eax,%eax
  80887f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  808883:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808887:	69 c0 fc 33 00 00    	imul   $0x33fc,%eax,%eax
  80888d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  808891:	8b 44 24 04          	mov    0x4(%rsp),%eax
  808895:	69 c0 90 2b 00 00    	imul   $0x2b90,%eax,%eax
  80889b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  80889f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  8088a3:	69 c0 83 6f 00 00    	imul   $0x6f83,%eax,%eax
  8088a9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  8088ad:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8088b1:	69 c0 dc 12 00 00    	imul   $0x12dc,%eax,%eax
  8088b7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  8088bb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  8088bf:	69 c0 8b b7 00 00    	imul   $0xb78b,%eax,%eax
  8088c5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  8088c9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  8088cd:	69 c0 cb 6e 00 00    	imul   $0x6ecb,%eax,%eax
  8088d3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  8088d7:	8b 04 24             	mov    (%rsp),%eax
  8088da:	69 c0 77 3d 00 00    	imul   $0x3d77,%eax,%eax
  8088e0:	89 04 24             	mov    %eax,(%rsp)
  8088e3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  8088e7:	69 c0 dd 73 00 00    	imul   $0x73dd,%eax,%eax
  8088ed:	89 44 24 14          	mov    %eax,0x14(%rsp)
  8088f1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  8088f5:	69 c0 c4 5c 00 00    	imul   $0x5cc4,%eax,%eax
  8088fb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  8088ff:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808903:	69 c0 f4 b5 00 00    	imul   $0xb5f4,%eax,%eax
  808909:	89 44 24 24          	mov    %eax,0x24(%rsp)
  80890d:	8b 04 24             	mov    (%rsp),%eax
  808910:	69 c0 4e 05 00 00    	imul   $0x54e,%eax,%eax
  808916:	89 04 24             	mov    %eax,(%rsp)
  808919:	8b 44 24 08          	mov    0x8(%rsp),%eax
  80891d:	69 c0 38 f3 00 00    	imul   $0xf338,%eax,%eax
  808923:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808927:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  80892b:	69 c0 e5 cb 00 00    	imul   $0xcbe5,%eax,%eax
  808931:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  808935:	8b 44 24 08          	mov    0x8(%rsp),%eax
  808939:	69 c0 ab 01 00 00    	imul   $0x1ab,%eax,%eax
  80893f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  808943:	8b 44 24 24          	mov    0x24(%rsp),%eax
  808947:	69 c0 5d 4a 00 00    	imul   $0x4a5d,%eax,%eax
  80894d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  808951:	8b 44 24 14          	mov    0x14(%rsp),%eax
  808955:	69 c0 2c 3d 00 00    	imul   $0x3d2c,%eax,%eax
  80895b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  80895f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  808963:	69 c0 66 c1 00 00    	imul   $0xc166,%eax,%eax
  808969:	89 44 24 18          	mov    %eax,0x18(%rsp)
  80896d:	ba 00 00 00 00       	mov    $0x0,%edx
  808972:	b8 00 00 00 00       	mov    $0x0,%eax
  808977:	eb 0a                	jmp    808983 <scramble+0x517>
  808979:	89 d1                	mov    %edx,%ecx
  80897b:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  80897e:	01 c8                	add    %ecx,%eax
  808980:	83 c2 01             	add    $0x1,%edx
  808983:	83 fa 09             	cmp    $0x9,%edx
  808986:	76 f1                	jbe    808979 <scramble+0x50d>
  808988:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  80898d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  808994:	00 00 
  808996:	75 05                	jne    80899d <scramble+0x531>
  808998:	48 83 c4 38          	add    $0x38,%rsp
  80899c:	c3                   	ret
  80899d:	e8 3e 83 bf ff       	call   400ce0 <__stack_chk_fail@plt>

00000000008089a2 <getbuf>:
  8089a2:	48 83 ec 18          	sub    $0x18,%rsp
  8089a6:	48 89 e7             	mov    %rsp,%rdi
  8089a9:	e8 94 02 00 00       	call   808c42 <Gets>
  8089ae:	b8 01 00 00 00       	mov    $0x1,%eax
  8089b3:	48 83 c4 18          	add    $0x18,%rsp
  8089b7:	c3                   	ret

00000000008089b8 <touch1>:
  8089b8:	48 83 ec 08          	sub    $0x8,%rsp
  8089bc:	c7 05 36 3b 20 00 01 	movl   $0x1,0x203b36(%rip)        # a0c4fc <vlevel>
  8089c3:	00 00 00 
  8089c6:	48 8d 3d 1e 19 00 00 	lea    0x191e(%rip),%rdi        # 80a2eb <_IO_stdin_used+0x27b>
  8089cd:	e8 ee 82 bf ff       	call   400cc0 <puts@plt>
  8089d2:	bf 01 00 00 00       	mov    $0x1,%edi
  8089d7:	e8 dd 04 00 00       	call   808eb9 <validate>
  8089dc:	bf 00 00 00 00       	mov    $0x0,%edi
  8089e1:	e8 3a 84 bf ff       	call   400e20 <exit@plt>

00000000008089e6 <touch2>:
  8089e6:	48 83 ec 08          	sub    $0x8,%rsp
  8089ea:	89 fa                	mov    %edi,%edx
  8089ec:	c7 05 06 3b 20 00 02 	movl   $0x2,0x203b06(%rip)        # a0c4fc <vlevel>
  8089f3:	00 00 00 
  8089f6:	39 3d 08 3b 20 00    	cmp    %edi,0x203b08(%rip)        # a0c504 <cookie>
  8089fc:	74 2a                	je     808a28 <touch2+0x42>
  8089fe:	48 8d 35 33 19 00 00 	lea    0x1933(%rip),%rsi        # 80a338 <_IO_stdin_used+0x2c8>
  808a05:	bf 01 00 00 00       	mov    $0x1,%edi
  808a0a:	b8 00 00 00 00       	mov    $0x0,%eax
  808a0f:	e8 cc 83 bf ff       	call   400de0 <__printf_chk@plt>
  808a14:	bf 02 00 00 00       	mov    $0x2,%edi
  808a19:	e8 6b 05 00 00       	call   808f89 <fail>
  808a1e:	bf 00 00 00 00       	mov    $0x0,%edi
  808a23:	e8 f8 83 bf ff       	call   400e20 <exit@plt>
  808a28:	48 8d 35 e1 18 00 00 	lea    0x18e1(%rip),%rsi        # 80a310 <_IO_stdin_used+0x2a0>
  808a2f:	bf 01 00 00 00       	mov    $0x1,%edi
  808a34:	b8 00 00 00 00       	mov    $0x0,%eax
  808a39:	e8 a2 83 bf ff       	call   400de0 <__printf_chk@plt>
  808a3e:	bf 02 00 00 00       	mov    $0x2,%edi
  808a43:	e8 71 04 00 00       	call   808eb9 <validate>
  808a48:	eb d4                	jmp    808a1e <touch2+0x38>

0000000000808a4a <hexmatch>:
  808a4a:	41 54                	push   %r12
  808a4c:	55                   	push   %rbp
  808a4d:	53                   	push   %rbx
  808a4e:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  808a52:	89 fd                	mov    %edi,%ebp
  808a54:	48 89 f3             	mov    %rsi,%rbx
  808a57:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808a5e:	00 00 
  808a60:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  808a65:	31 c0                	xor    %eax,%eax
  808a67:	e8 34 83 bf ff       	call   400da0 <random@plt>
  808a6c:	48 89 c1             	mov    %rax,%rcx
  808a6f:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  808a76:	0a d7 a3 
  808a79:	48 f7 ea             	imul   %rdx
  808a7c:	48 01 ca             	add    %rcx,%rdx
  808a7f:	48 c1 fa 06          	sar    $0x6,%rdx
  808a83:	48 89 c8             	mov    %rcx,%rax
  808a86:	48 c1 f8 3f          	sar    $0x3f,%rax
  808a8a:	48 29 c2             	sub    %rax,%rdx
  808a8d:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  808a91:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  808a95:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  808a9c:	00 
  808a9d:	48 29 c1             	sub    %rax,%rcx
  808aa0:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  808aa4:	41 89 e8             	mov    %ebp,%r8d
  808aa7:	48 8d 0d 5a 18 00 00 	lea    0x185a(%rip),%rcx        # 80a308 <_IO_stdin_used+0x298>
  808aae:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  808ab5:	be 01 00 00 00       	mov    $0x1,%esi
  808aba:	4c 89 e7             	mov    %r12,%rdi
  808abd:	b8 00 00 00 00       	mov    $0x0,%eax
  808ac2:	e8 89 83 bf ff       	call   400e50 <__sprintf_chk@plt>
  808ac7:	ba 09 00 00 00       	mov    $0x9,%edx
  808acc:	4c 89 e6             	mov    %r12,%rsi
  808acf:	48 89 df             	mov    %rbx,%rdi
  808ad2:	e8 c9 81 bf ff       	call   400ca0 <strncmp@plt>
  808ad7:	85 c0                	test   %eax,%eax
  808ad9:	0f 94 c0             	sete   %al
  808adc:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  808ae1:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  808ae8:	00 00 
  808aea:	75 0c                	jne    808af8 <hexmatch+0xae>
  808aec:	0f b6 c0             	movzbl %al,%eax
  808aef:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  808af3:	5b                   	pop    %rbx
  808af4:	5d                   	pop    %rbp
  808af5:	41 5c                	pop    %r12
  808af7:	c3                   	ret
  808af8:	e8 e3 81 bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000808afd <touch3>:
  808afd:	53                   	push   %rbx
  808afe:	48 89 fb             	mov    %rdi,%rbx
  808b01:	c7 05 f1 39 20 00 03 	movl   $0x3,0x2039f1(%rip)        # a0c4fc <vlevel>
  808b08:	00 00 00 
  808b0b:	48 89 fe             	mov    %rdi,%rsi
  808b0e:	8b 3d f0 39 20 00    	mov    0x2039f0(%rip),%edi        # a0c504 <cookie>
  808b14:	e8 31 ff ff ff       	call   808a4a <hexmatch>
  808b19:	85 c0                	test   %eax,%eax
  808b1b:	74 2d                	je     808b4a <touch3+0x4d>
  808b1d:	48 89 da             	mov    %rbx,%rdx
  808b20:	48 8d 35 39 18 00 00 	lea    0x1839(%rip),%rsi        # 80a360 <_IO_stdin_used+0x2f0>
  808b27:	bf 01 00 00 00       	mov    $0x1,%edi
  808b2c:	b8 00 00 00 00       	mov    $0x0,%eax
  808b31:	e8 aa 82 bf ff       	call   400de0 <__printf_chk@plt>
  808b36:	bf 03 00 00 00       	mov    $0x3,%edi
  808b3b:	e8 79 03 00 00       	call   808eb9 <validate>
  808b40:	bf 00 00 00 00       	mov    $0x0,%edi
  808b45:	e8 d6 82 bf ff       	call   400e20 <exit@plt>
  808b4a:	48 89 da             	mov    %rbx,%rdx
  808b4d:	48 8d 35 34 18 00 00 	lea    0x1834(%rip),%rsi        # 80a388 <_IO_stdin_used+0x318>
  808b54:	bf 01 00 00 00       	mov    $0x1,%edi
  808b59:	b8 00 00 00 00       	mov    $0x0,%eax
  808b5e:	e8 7d 82 bf ff       	call   400de0 <__printf_chk@plt>
  808b63:	bf 03 00 00 00       	mov    $0x3,%edi
  808b68:	e8 1c 04 00 00       	call   808f89 <fail>
  808b6d:	eb d1                	jmp    808b40 <touch3+0x43>

0000000000808b6f <test>:
  808b6f:	48 83 ec 08          	sub    $0x8,%rsp
  808b73:	b8 00 00 00 00       	mov    $0x0,%eax
  808b78:	e8 25 fe ff ff       	call   8089a2 <getbuf>
  808b7d:	89 c2                	mov    %eax,%edx
  808b7f:	48 8d 35 2a 18 00 00 	lea    0x182a(%rip),%rsi        # 80a3b0 <_IO_stdin_used+0x340>
  808b86:	bf 01 00 00 00       	mov    $0x1,%edi
  808b8b:	b8 00 00 00 00       	mov    $0x0,%eax
  808b90:	e8 4b 82 bf ff       	call   400de0 <__printf_chk@plt>
  808b95:	48 83 c4 08          	add    $0x8,%rsp
  808b99:	c3                   	ret

0000000000808b9a <save_char>:
  808b9a:	8b 05 84 45 20 00    	mov    0x204584(%rip),%eax        # a0d124 <gets_cnt>
  808ba0:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  808ba5:	7f 4a                	jg     808bf1 <save_char+0x57>
  808ba7:	89 f9                	mov    %edi,%ecx
  808ba9:	c0 e9 04             	shr    $0x4,%cl
  808bac:	8d 14 40             	lea    (%rax,%rax,2),%edx
  808baf:	4c 8d 05 1a 1b 00 00 	lea    0x1b1a(%rip),%r8        # 80a6d0 <trans_char>
  808bb6:	83 e1 0f             	and    $0xf,%ecx
  808bb9:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  808bbe:	48 8d 0d 5b 39 20 00 	lea    0x20395b(%rip),%rcx        # a0c520 <gets_buf>
  808bc5:	48 63 f2             	movslq %edx,%rsi
  808bc8:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  808bcc:	8d 72 01             	lea    0x1(%rdx),%esi
  808bcf:	83 e7 0f             	and    $0xf,%edi
  808bd2:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  808bd7:	48 63 f6             	movslq %esi,%rsi
  808bda:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  808bde:	83 c2 02             	add    $0x2,%edx
  808be1:	48 63 d2             	movslq %edx,%rdx
  808be4:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  808be8:	83 c0 01             	add    $0x1,%eax
  808beb:	89 05 33 45 20 00    	mov    %eax,0x204533(%rip)        # a0d124 <gets_cnt>
  808bf1:	f3 c3                	repz ret

0000000000808bf3 <save_term>:
  808bf3:	8b 05 2b 45 20 00    	mov    0x20452b(%rip),%eax        # a0d124 <gets_cnt>
  808bf9:	8d 04 40             	lea    (%rax,%rax,2),%eax
  808bfc:	48 98                	cltq
  808bfe:	48 8d 15 1b 39 20 00 	lea    0x20391b(%rip),%rdx        # a0c520 <gets_buf>
  808c05:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  808c09:	c3                   	ret

0000000000808c0a <check_fail>:
  808c0a:	48 83 ec 08          	sub    $0x8,%rsp
  808c0e:	0f be 15 1b 45 20 00 	movsbl 0x20451b(%rip),%edx        # a0d130 <target_prefix>
  808c15:	4c 8d 05 04 39 20 00 	lea    0x203904(%rip),%r8        # a0c520 <gets_buf>
  808c1c:	8b 0d d6 38 20 00    	mov    0x2038d6(%rip),%ecx        # a0c4f8 <check_level>
  808c22:	48 8d 35 aa 17 00 00 	lea    0x17aa(%rip),%rsi        # 80a3d3 <_IO_stdin_used+0x363>
  808c29:	bf 01 00 00 00       	mov    $0x1,%edi
  808c2e:	b8 00 00 00 00       	mov    $0x0,%eax
  808c33:	e8 a8 81 bf ff       	call   400de0 <__printf_chk@plt>
  808c38:	bf 01 00 00 00       	mov    $0x1,%edi
  808c3d:	e8 de 81 bf ff       	call   400e20 <exit@plt>

0000000000808c42 <Gets>:
  808c42:	41 54                	push   %r12
  808c44:	55                   	push   %rbp
  808c45:	53                   	push   %rbx
  808c46:	49 89 fc             	mov    %rdi,%r12
  808c49:	c7 05 d1 44 20 00 00 	movl   $0x0,0x2044d1(%rip)        # a0d124 <gets_cnt>
  808c50:	00 00 00 
  808c53:	48 89 fb             	mov    %rdi,%rbx
  808c56:	eb 11                	jmp    808c69 <Gets+0x27>
  808c58:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  808c5c:	88 03                	mov    %al,(%rbx)
  808c5e:	0f b6 f8             	movzbl %al,%edi
  808c61:	e8 34 ff ff ff       	call   808b9a <save_char>
  808c66:	48 89 eb             	mov    %rbp,%rbx
  808c69:	48 8b 3d 80 38 20 00 	mov    0x203880(%rip),%rdi        # a0c4f0 <infile>
  808c70:	e8 3b 81 bf ff       	call   400db0 <_IO_getc@plt>
  808c75:	83 f8 ff             	cmp    $0xffffffff,%eax
  808c78:	74 05                	je     808c7f <Gets+0x3d>
  808c7a:	83 f8 0a             	cmp    $0xa,%eax
  808c7d:	75 d9                	jne    808c58 <Gets+0x16>
  808c7f:	c6 03 00             	movb   $0x0,(%rbx)
  808c82:	b8 00 00 00 00       	mov    $0x0,%eax
  808c87:	e8 67 ff ff ff       	call   808bf3 <save_term>
  808c8c:	4c 89 e0             	mov    %r12,%rax
  808c8f:	5b                   	pop    %rbx
  808c90:	5d                   	pop    %rbp
  808c91:	41 5c                	pop    %r12
  808c93:	c3                   	ret

0000000000808c94 <notify_server>:
  808c94:	55                   	push   %rbp
  808c95:	53                   	push   %rbx
  808c96:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  808c9d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808ca4:	00 00 
  808ca6:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  808cad:	00 
  808cae:	31 c0                	xor    %eax,%eax
  808cb0:	83 3d 51 38 20 00 00 	cmpl   $0x0,0x203851(%rip)        # a0c508 <is_checker>
  808cb7:	0f 85 d9 00 00 00    	jne    808d96 <notify_server+0x102>
  808cbd:	89 fb                	mov    %edi,%ebx
  808cbf:	8b 05 5f 44 20 00    	mov    0x20445f(%rip),%eax        # a0d124 <gets_cnt>
  808cc5:	83 c0 64             	add    $0x64,%eax
  808cc8:	3d 00 20 00 00       	cmp    $0x2000,%eax
  808ccd:	0f 8f e4 00 00 00    	jg     808db7 <notify_server+0x123>
  808cd3:	0f be 05 56 44 20 00 	movsbl 0x204456(%rip),%eax        # a0d130 <target_prefix>
  808cda:	83 3d a7 37 20 00 00 	cmpl   $0x0,0x2037a7(%rip)        # a0c488 <notify>
  808ce1:	0f 84 f0 00 00 00    	je     808dd7 <notify_server+0x143>
  808ce7:	8b 15 13 38 20 00    	mov    0x203813(%rip),%edx        # a0c500 <authkey>
  808ced:	85 db                	test   %ebx,%ebx
  808cef:	0f 84 ec 00 00 00    	je     808de1 <notify_server+0x14d>
  808cf5:	48 8d 2d ed 16 00 00 	lea    0x16ed(%rip),%rbp        # 80a3e9 <_IO_stdin_used+0x379>
  808cfc:	48 89 e7             	mov    %rsp,%rdi
  808cff:	48 83 ec 08          	sub    $0x8,%rsp
  808d03:	48 8d 0d 16 38 20 00 	lea    0x203816(%rip),%rcx        # a0c520 <gets_buf>
  808d0a:	51                   	push   %rcx
  808d0b:	56                   	push   %rsi
  808d0c:	50                   	push   %rax
  808d0d:	52                   	push   %rdx
  808d0e:	55                   	push   %rbp
  808d0f:	44 8b 0d 1a 34 20 00 	mov    0x20341a(%rip),%r9d        # a0c130 <target_id>
  808d16:	4c 8d 05 d6 16 00 00 	lea    0x16d6(%rip),%r8        # 80a3f3 <_IO_stdin_used+0x383>
  808d1d:	b9 00 20 00 00       	mov    $0x2000,%ecx
  808d22:	ba 01 00 00 00       	mov    $0x1,%edx
  808d27:	be 00 20 00 00       	mov    $0x2000,%esi
  808d2c:	b8 00 00 00 00       	mov    $0x0,%eax
  808d31:	e8 3a 7f bf ff       	call   400c70 <__snprintf_chk@plt>
  808d36:	48 83 c4 30          	add    $0x30,%rsp
  808d3a:	83 3d 47 37 20 00 00 	cmpl   $0x0,0x203747(%rip)        # a0c488 <notify>
  808d41:	0f 84 df 00 00 00    	je     808e26 <notify_server+0x192>
  808d47:	85 db                	test   %ebx,%ebx
  808d49:	0f 84 c6 00 00 00    	je     808e15 <notify_server+0x181>
  808d4f:	48 89 e1             	mov    %rsp,%rcx
  808d52:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  808d59:	00 
  808d5a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  808d60:	48 8b 15 e1 33 20 00 	mov    0x2033e1(%rip),%rdx        # a0c148 <lab>
  808d67:	48 8b 35 12 37 20 00 	mov    0x203712(%rip),%rsi        # a0c480 <course>
  808d6e:	48 8b 3d cb 33 20 00 	mov    0x2033cb(%rip),%rdi        # a0c140 <user_id>
  808d75:	e8 af 11 00 00       	call   809f29 <driver_post>
  808d7a:	85 c0                	test   %eax,%eax
  808d7c:	78 6f                	js     808ded <notify_server+0x159>
  808d7e:	48 8d 3d b3 17 00 00 	lea    0x17b3(%rip),%rdi        # 80a538 <_IO_stdin_used+0x4c8>
  808d85:	e8 36 7f bf ff       	call   400cc0 <puts@plt>
  808d8a:	48 8d 3d 8a 16 00 00 	lea    0x168a(%rip),%rdi        # 80a41b <_IO_stdin_used+0x3ab>
  808d91:	e8 2a 7f bf ff       	call   400cc0 <puts@plt>
  808d96:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  808d9d:	00 
  808d9e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808da5:	00 00 
  808da7:	0f 85 07 01 00 00    	jne    808eb4 <notify_server+0x220>
  808dad:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  808db4:	5b                   	pop    %rbx
  808db5:	5d                   	pop    %rbp
  808db6:	c3                   	ret
  808db7:	48 8d 35 4a 17 00 00 	lea    0x174a(%rip),%rsi        # 80a508 <_IO_stdin_used+0x498>
  808dbe:	bf 01 00 00 00       	mov    $0x1,%edi
  808dc3:	b8 00 00 00 00       	mov    $0x0,%eax
  808dc8:	e8 13 80 bf ff       	call   400de0 <__printf_chk@plt>
  808dcd:	bf 01 00 00 00       	mov    $0x1,%edi
  808dd2:	e8 49 80 bf ff       	call   400e20 <exit@plt>
  808dd7:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  808ddc:	e9 0c ff ff ff       	jmp    808ced <notify_server+0x59>
  808de1:	48 8d 2d 06 16 00 00 	lea    0x1606(%rip),%rbp        # 80a3ee <_IO_stdin_used+0x37e>
  808de8:	e9 0f ff ff ff       	jmp    808cfc <notify_server+0x68>
  808ded:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  808df4:	00 
  808df5:	48 8d 35 13 16 00 00 	lea    0x1613(%rip),%rsi        # 80a40f <_IO_stdin_used+0x39f>
  808dfc:	bf 01 00 00 00       	mov    $0x1,%edi
  808e01:	b8 00 00 00 00       	mov    $0x0,%eax
  808e06:	e8 d5 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e0b:	bf 01 00 00 00       	mov    $0x1,%edi
  808e10:	e8 0b 80 bf ff       	call   400e20 <exit@plt>
  808e15:	48 8d 3d 09 16 00 00 	lea    0x1609(%rip),%rdi        # 80a425 <_IO_stdin_used+0x3b5>
  808e1c:	e8 9f 7e bf ff       	call   400cc0 <puts@plt>
  808e21:	e9 70 ff ff ff       	jmp    808d96 <notify_server+0x102>
  808e26:	48 89 ea             	mov    %rbp,%rdx
  808e29:	48 8d 35 40 17 00 00 	lea    0x1740(%rip),%rsi        # 80a570 <_IO_stdin_used+0x500>
  808e30:	bf 01 00 00 00       	mov    $0x1,%edi
  808e35:	b8 00 00 00 00       	mov    $0x0,%eax
  808e3a:	e8 a1 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e3f:	48 8b 15 fa 32 20 00 	mov    0x2032fa(%rip),%rdx        # a0c140 <user_id>
  808e46:	48 8d 35 df 15 00 00 	lea    0x15df(%rip),%rsi        # 80a42c <_IO_stdin_used+0x3bc>
  808e4d:	bf 01 00 00 00       	mov    $0x1,%edi
  808e52:	b8 00 00 00 00       	mov    $0x0,%eax
  808e57:	e8 84 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e5c:	48 8b 15 1d 36 20 00 	mov    0x20361d(%rip),%rdx        # a0c480 <course>
  808e63:	48 8d 35 cf 15 00 00 	lea    0x15cf(%rip),%rsi        # 80a439 <_IO_stdin_used+0x3c9>
  808e6a:	bf 01 00 00 00       	mov    $0x1,%edi
  808e6f:	b8 00 00 00 00       	mov    $0x0,%eax
  808e74:	e8 67 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e79:	48 8b 15 c8 32 20 00 	mov    0x2032c8(%rip),%rdx        # a0c148 <lab>
  808e80:	48 8d 35 be 15 00 00 	lea    0x15be(%rip),%rsi        # 80a445 <_IO_stdin_used+0x3d5>
  808e87:	bf 01 00 00 00       	mov    $0x1,%edi
  808e8c:	b8 00 00 00 00       	mov    $0x0,%eax
  808e91:	e8 4a 7f bf ff       	call   400de0 <__printf_chk@plt>
  808e96:	48 89 e2             	mov    %rsp,%rdx
  808e99:	48 8d 35 ae 15 00 00 	lea    0x15ae(%rip),%rsi        # 80a44e <_IO_stdin_used+0x3de>
  808ea0:	bf 01 00 00 00       	mov    $0x1,%edi
  808ea5:	b8 00 00 00 00       	mov    $0x0,%eax
  808eaa:	e8 31 7f bf ff       	call   400de0 <__printf_chk@plt>
  808eaf:	e9 e2 fe ff ff       	jmp    808d96 <notify_server+0x102>
  808eb4:	e8 27 7e bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000808eb9 <validate>:
  808eb9:	53                   	push   %rbx
  808eba:	89 fb                	mov    %edi,%ebx
  808ebc:	83 3d 45 36 20 00 00 	cmpl   $0x0,0x203645(%rip)        # a0c508 <is_checker>
  808ec3:	74 72                	je     808f37 <validate+0x7e>
  808ec5:	39 3d 31 36 20 00    	cmp    %edi,0x203631(%rip)        # a0c4fc <vlevel>
  808ecb:	75 32                	jne    808eff <validate+0x46>
  808ecd:	8b 15 25 36 20 00    	mov    0x203625(%rip),%edx        # a0c4f8 <check_level>
  808ed3:	39 fa                	cmp    %edi,%edx
  808ed5:	75 3e                	jne    808f15 <validate+0x5c>
  808ed7:	0f be 15 52 42 20 00 	movsbl 0x204252(%rip),%edx        # a0d130 <target_prefix>
  808ede:	4c 8d 05 3b 36 20 00 	lea    0x20363b(%rip),%r8        # a0c520 <gets_buf>
  808ee5:	89 f9                	mov    %edi,%ecx
  808ee7:	48 8d 35 8a 15 00 00 	lea    0x158a(%rip),%rsi        # 80a478 <_IO_stdin_used+0x408>
  808eee:	bf 01 00 00 00       	mov    $0x1,%edi
  808ef3:	b8 00 00 00 00       	mov    $0x0,%eax
  808ef8:	e8 e3 7e bf ff       	call   400de0 <__printf_chk@plt>
  808efd:	5b                   	pop    %rbx
  808efe:	c3                   	ret
  808eff:	48 8d 3d 54 15 00 00 	lea    0x1554(%rip),%rdi        # 80a45a <_IO_stdin_used+0x3ea>
  808f06:	e8 b5 7d bf ff       	call   400cc0 <puts@plt>
  808f0b:	b8 00 00 00 00       	mov    $0x0,%eax
  808f10:	e8 f5 fc ff ff       	call   808c0a <check_fail>
  808f15:	89 f9                	mov    %edi,%ecx
  808f17:	48 8d 35 7a 16 00 00 	lea    0x167a(%rip),%rsi        # 80a598 <_IO_stdin_used+0x528>
  808f1e:	bf 01 00 00 00       	mov    $0x1,%edi
  808f23:	b8 00 00 00 00       	mov    $0x0,%eax
  808f28:	e8 b3 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f2d:	b8 00 00 00 00       	mov    $0x0,%eax
  808f32:	e8 d3 fc ff ff       	call   808c0a <check_fail>
  808f37:	39 3d bf 35 20 00    	cmp    %edi,0x2035bf(%rip)        # a0c4fc <vlevel>
  808f3d:	74 1a                	je     808f59 <validate+0xa0>
  808f3f:	48 8d 3d 14 15 00 00 	lea    0x1514(%rip),%rdi        # 80a45a <_IO_stdin_used+0x3ea>
  808f46:	e8 75 7d bf ff       	call   400cc0 <puts@plt>
  808f4b:	89 de                	mov    %ebx,%esi
  808f4d:	bf 00 00 00 00       	mov    $0x0,%edi
  808f52:	e8 3d fd ff ff       	call   808c94 <notify_server>
  808f57:	eb a4                	jmp    808efd <validate+0x44>
  808f59:	0f be 0d d0 41 20 00 	movsbl 0x2041d0(%rip),%ecx        # a0d130 <target_prefix>
  808f60:	89 fa                	mov    %edi,%edx
  808f62:	48 8d 35 57 16 00 00 	lea    0x1657(%rip),%rsi        # 80a5c0 <_IO_stdin_used+0x550>
  808f69:	bf 01 00 00 00       	mov    $0x1,%edi
  808f6e:	b8 00 00 00 00       	mov    $0x0,%eax
  808f73:	e8 68 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f78:	89 de                	mov    %ebx,%esi
  808f7a:	bf 01 00 00 00       	mov    $0x1,%edi
  808f7f:	e8 10 fd ff ff       	call   808c94 <notify_server>
  808f84:	e9 74 ff ff ff       	jmp    808efd <validate+0x44>

0000000000808f89 <fail>:
  808f89:	48 83 ec 08          	sub    $0x8,%rsp
  808f8d:	83 3d 74 35 20 00 00 	cmpl   $0x0,0x203574(%rip)        # a0c508 <is_checker>
  808f94:	75 11                	jne    808fa7 <fail+0x1e>
  808f96:	89 fe                	mov    %edi,%esi
  808f98:	bf 00 00 00 00       	mov    $0x0,%edi
  808f9d:	e8 f2 fc ff ff       	call   808c94 <notify_server>
  808fa2:	48 83 c4 08          	add    $0x8,%rsp
  808fa6:	c3                   	ret
  808fa7:	b8 00 00 00 00       	mov    $0x0,%eax
  808fac:	e8 59 fc ff ff       	call   808c0a <check_fail>

0000000000808fb1 <bushandler>:
  808fb1:	48 83 ec 08          	sub    $0x8,%rsp
  808fb5:	83 3d 4c 35 20 00 00 	cmpl   $0x0,0x20354c(%rip)        # a0c508 <is_checker>
  808fbc:	74 16                	je     808fd4 <bushandler+0x23>
  808fbe:	48 8d 3d c8 14 00 00 	lea    0x14c8(%rip),%rdi        # 80a48d <_IO_stdin_used+0x41d>
  808fc5:	e8 f6 7c bf ff       	call   400cc0 <puts@plt>
  808fca:	b8 00 00 00 00       	mov    $0x0,%eax
  808fcf:	e8 36 fc ff ff       	call   808c0a <check_fail>
  808fd4:	48 8d 3d 1d 16 00 00 	lea    0x161d(%rip),%rdi        # 80a5f8 <_IO_stdin_used+0x588>
  808fdb:	e8 e0 7c bf ff       	call   400cc0 <puts@plt>
  808fe0:	48 8d 3d b0 14 00 00 	lea    0x14b0(%rip),%rdi        # 80a497 <_IO_stdin_used+0x427>
  808fe7:	e8 d4 7c bf ff       	call   400cc0 <puts@plt>
  808fec:	be 00 00 00 00       	mov    $0x0,%esi
  808ff1:	bf 00 00 00 00       	mov    $0x0,%edi
  808ff6:	e8 99 fc ff ff       	call   808c94 <notify_server>
  808ffb:	bf 01 00 00 00       	mov    $0x1,%edi
  809000:	e8 1b 7e bf ff       	call   400e20 <exit@plt>

0000000000809005 <seghandler>:
  809005:	48 83 ec 08          	sub    $0x8,%rsp
  809009:	83 3d f8 34 20 00 00 	cmpl   $0x0,0x2034f8(%rip)        # a0c508 <is_checker>
  809010:	74 16                	je     809028 <seghandler+0x23>
  809012:	48 8d 3d 94 14 00 00 	lea    0x1494(%rip),%rdi        # 80a4ad <_IO_stdin_used+0x43d>
  809019:	e8 a2 7c bf ff       	call   400cc0 <puts@plt>
  80901e:	b8 00 00 00 00       	mov    $0x0,%eax
  809023:	e8 e2 fb ff ff       	call   808c0a <check_fail>
  809028:	48 8d 3d e9 15 00 00 	lea    0x15e9(%rip),%rdi        # 80a618 <_IO_stdin_used+0x5a8>
  80902f:	e8 8c 7c bf ff       	call   400cc0 <puts@plt>
  809034:	48 8d 3d 5c 14 00 00 	lea    0x145c(%rip),%rdi        # 80a497 <_IO_stdin_used+0x427>
  80903b:	e8 80 7c bf ff       	call   400cc0 <puts@plt>
  809040:	be 00 00 00 00       	mov    $0x0,%esi
  809045:	bf 00 00 00 00       	mov    $0x0,%edi
  80904a:	e8 45 fc ff ff       	call   808c94 <notify_server>
  80904f:	bf 01 00 00 00       	mov    $0x1,%edi
  809054:	e8 c7 7d bf ff       	call   400e20 <exit@plt>

0000000000809059 <illegalhandler>:
  809059:	48 83 ec 08          	sub    $0x8,%rsp
  80905d:	83 3d a4 34 20 00 00 	cmpl   $0x0,0x2034a4(%rip)        # a0c508 <is_checker>
  809064:	74 16                	je     80907c <illegalhandler+0x23>
  809066:	48 8d 3d 53 14 00 00 	lea    0x1453(%rip),%rdi        # 80a4c0 <_IO_stdin_used+0x450>
  80906d:	e8 4e 7c bf ff       	call   400cc0 <puts@plt>
  809072:	b8 00 00 00 00       	mov    $0x0,%eax
  809077:	e8 8e fb ff ff       	call   808c0a <check_fail>
  80907c:	48 8d 3d bd 15 00 00 	lea    0x15bd(%rip),%rdi        # 80a640 <_IO_stdin_used+0x5d0>
  809083:	e8 38 7c bf ff       	call   400cc0 <puts@plt>
  809088:	48 8d 3d 08 14 00 00 	lea    0x1408(%rip),%rdi        # 80a497 <_IO_stdin_used+0x427>
  80908f:	e8 2c 7c bf ff       	call   400cc0 <puts@plt>
  809094:	be 00 00 00 00       	mov    $0x0,%esi
  809099:	bf 00 00 00 00       	mov    $0x0,%edi
  80909e:	e8 f1 fb ff ff       	call   808c94 <notify_server>
  8090a3:	bf 01 00 00 00       	mov    $0x1,%edi
  8090a8:	e8 73 7d bf ff       	call   400e20 <exit@plt>

00000000008090ad <sigalrmhandler>:
  8090ad:	48 83 ec 08          	sub    $0x8,%rsp
  8090b1:	83 3d 50 34 20 00 00 	cmpl   $0x0,0x203450(%rip)        # a0c508 <is_checker>
  8090b8:	74 16                	je     8090d0 <sigalrmhandler+0x23>
  8090ba:	48 8d 3d 13 14 00 00 	lea    0x1413(%rip),%rdi        # 80a4d4 <_IO_stdin_used+0x464>
  8090c1:	e8 fa 7b bf ff       	call   400cc0 <puts@plt>
  8090c6:	b8 00 00 00 00       	mov    $0x0,%eax
  8090cb:	e8 3a fb ff ff       	call   808c0a <check_fail>
  8090d0:	ba 05 00 00 00       	mov    $0x5,%edx
  8090d5:	48 8d 35 94 15 00 00 	lea    0x1594(%rip),%rsi        # 80a670 <_IO_stdin_used+0x600>
  8090dc:	bf 01 00 00 00       	mov    $0x1,%edi
  8090e1:	b8 00 00 00 00       	mov    $0x0,%eax
  8090e6:	e8 f5 7c bf ff       	call   400de0 <__printf_chk@plt>
  8090eb:	be 00 00 00 00       	mov    $0x0,%esi
  8090f0:	bf 00 00 00 00       	mov    $0x0,%edi
  8090f5:	e8 9a fb ff ff       	call   808c94 <notify_server>
  8090fa:	bf 01 00 00 00       	mov    $0x1,%edi
  8090ff:	e8 1c 7d bf ff       	call   400e20 <exit@plt>

0000000000809104 <launch>:
  809104:	55                   	push   %rbp
  809105:	48 89 e5             	mov    %rsp,%rbp
  809108:	48 83 ec 10          	sub    $0x10,%rsp
  80910c:	48 89 fa             	mov    %rdi,%rdx
  80910f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809116:	00 00 
  809118:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  80911c:	31 c0                	xor    %eax,%eax
  80911e:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  809122:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  809126:	48 29 c4             	sub    %rax,%rsp
  809129:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  80912e:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  809132:	be f4 00 00 00       	mov    $0xf4,%esi
  809137:	e8 c4 7b bf ff       	call   400d00 <memset@plt>
  80913c:	48 8b 05 5d 33 20 00 	mov    0x20335d(%rip),%rax        # a0c4a0 <stdin@GLIBC_2.2.5>
  809143:	48 39 05 a6 33 20 00 	cmp    %rax,0x2033a6(%rip)        # a0c4f0 <infile>
  80914a:	74 3a                	je     809186 <launch+0x82>
  80914c:	c7 05 a6 33 20 00 00 	movl   $0x0,0x2033a6(%rip)        # a0c4fc <vlevel>
  809153:	00 00 00 
  809156:	b8 00 00 00 00       	mov    $0x0,%eax
  80915b:	e8 0f fa ff ff       	call   808b6f <test>
  809160:	83 3d a1 33 20 00 00 	cmpl   $0x0,0x2033a1(%rip)        # a0c508 <is_checker>
  809167:	75 35                	jne    80919e <launch+0x9a>
  809169:	48 8d 3d 84 13 00 00 	lea    0x1384(%rip),%rdi        # 80a4f4 <_IO_stdin_used+0x484>
  809170:	e8 4b 7b bf ff       	call   400cc0 <puts@plt>
  809175:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  809179:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  809180:	00 00 
  809182:	75 30                	jne    8091b4 <launch+0xb0>
  809184:	c9                   	leave
  809185:	c3                   	ret
  809186:	48 8d 35 4f 13 00 00 	lea    0x134f(%rip),%rsi        # 80a4dc <_IO_stdin_used+0x46c>
  80918d:	bf 01 00 00 00       	mov    $0x1,%edi
  809192:	b8 00 00 00 00       	mov    $0x0,%eax
  809197:	e8 44 7c bf ff       	call   400de0 <__printf_chk@plt>
  80919c:	eb ae                	jmp    80914c <launch+0x48>
  80919e:	48 8d 3d 44 13 00 00 	lea    0x1344(%rip),%rdi        # 80a4e9 <_IO_stdin_used+0x479>
  8091a5:	e8 16 7b bf ff       	call   400cc0 <puts@plt>
  8091aa:	b8 00 00 00 00       	mov    $0x0,%eax
  8091af:	e8 56 fa ff ff       	call   808c0a <check_fail>
  8091b4:	e8 27 7b bf ff       	call   400ce0 <__stack_chk_fail@plt>

00000000008091b9 <stable_launch>:
  8091b9:	53                   	push   %rbx
  8091ba:	48 89 3d 27 33 20 00 	mov    %rdi,0x203327(%rip)        # a0c4e8 <global_offset>
  8091c1:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  8091c7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  8091cd:	b9 32 01 00 00       	mov    $0x132,%ecx
  8091d2:	ba 07 00 00 00       	mov    $0x7,%edx
  8091d7:	be 00 00 10 00       	mov    $0x100000,%esi
  8091dc:	bf 00 60 58 55       	mov    $0x55586000,%edi
  8091e1:	e8 0a 7b bf ff       	call   400cf0 <mmap@plt>
  8091e6:	48 89 c3             	mov    %rax,%rbx
  8091e9:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  8091ef:	75 43                	jne    809234 <stable_launch+0x7b>
  8091f1:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  8091f8:	48 89 15 29 3f 20 00 	mov    %rdx,0x203f29(%rip)        # a0d128 <stack_top>
  8091ff:	48 89 e0             	mov    %rsp,%rax
  809202:	48 89 d4             	mov    %rdx,%rsp
  809205:	48 89 c2             	mov    %rax,%rdx
  809208:	48 89 15 d1 32 20 00 	mov    %rdx,0x2032d1(%rip)        # a0c4e0 <global_save_stack>
  80920f:	48 8b 3d d2 32 20 00 	mov    0x2032d2(%rip),%rdi        # a0c4e8 <global_offset>
  809216:	e8 e9 fe ff ff       	call   809104 <launch>
  80921b:	48 8b 05 be 32 20 00 	mov    0x2032be(%rip),%rax        # a0c4e0 <global_save_stack>
  809222:	48 89 c4             	mov    %rax,%rsp
  809225:	be 00 00 10 00       	mov    $0x100000,%esi
  80922a:	48 89 df             	mov    %rbx,%rdi
  80922d:	e8 9e 7b bf ff       	call   400dd0 <munmap@plt>
  809232:	5b                   	pop    %rbx
  809233:	c3                   	ret
  809234:	be 00 00 10 00       	mov    $0x100000,%esi
  809239:	48 89 c7             	mov    %rax,%rdi
  80923c:	e8 8f 7b bf ff       	call   400dd0 <munmap@plt>
  809241:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  809246:	48 8d 15 5b 14 00 00 	lea    0x145b(%rip),%rdx        # 80a6a8 <_IO_stdin_used+0x638>
  80924d:	be 01 00 00 00       	mov    $0x1,%esi
  809252:	48 8b 3d 67 32 20 00 	mov    0x203267(%rip),%rdi        # a0c4c0 <stderr@GLIBC_2.2.5>
  809259:	b8 00 00 00 00       	mov    $0x0,%eax
  80925e:	e8 dd 7b bf ff       	call   400e40 <__fprintf_chk@plt>
  809263:	bf 01 00 00 00       	mov    $0x1,%edi
  809268:	e8 b3 7b bf ff       	call   400e20 <exit@plt>

000000000080926d <rio_readinitb>:
  80926d:	89 37                	mov    %esi,(%rdi)
  80926f:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  809276:	48 8d 47 10          	lea    0x10(%rdi),%rax
  80927a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  80927e:	c3                   	ret

000000000080927f <sigalrm_handler>:
  80927f:	48 83 ec 08          	sub    $0x8,%rsp
  809283:	b9 00 00 00 00       	mov    $0x0,%ecx
  809288:	48 8d 15 51 14 00 00 	lea    0x1451(%rip),%rdx        # 80a6e0 <trans_char+0x10>
  80928f:	be 01 00 00 00       	mov    $0x1,%esi
  809294:	48 8b 3d 25 32 20 00 	mov    0x203225(%rip),%rdi        # a0c4c0 <stderr@GLIBC_2.2.5>
  80929b:	b8 00 00 00 00       	mov    $0x0,%eax
  8092a0:	e8 9b 7b bf ff       	call   400e40 <__fprintf_chk@plt>
  8092a5:	bf 01 00 00 00       	mov    $0x1,%edi
  8092aa:	e8 71 7b bf ff       	call   400e20 <exit@plt>

00000000008092af <rio_writen>:
  8092af:	41 55                	push   %r13
  8092b1:	41 54                	push   %r12
  8092b3:	55                   	push   %rbp
  8092b4:	53                   	push   %rbx
  8092b5:	48 83 ec 08          	sub    $0x8,%rsp
  8092b9:	41 89 fc             	mov    %edi,%r12d
  8092bc:	48 89 f5             	mov    %rsi,%rbp
  8092bf:	49 89 d5             	mov    %rdx,%r13
  8092c2:	48 89 d3             	mov    %rdx,%rbx
  8092c5:	eb 06                	jmp    8092cd <rio_writen+0x1e>
  8092c7:	48 29 c3             	sub    %rax,%rbx
  8092ca:	48 01 c5             	add    %rax,%rbp
  8092cd:	48 85 db             	test   %rbx,%rbx
  8092d0:	74 24                	je     8092f6 <rio_writen+0x47>
  8092d2:	48 89 da             	mov    %rbx,%rdx
  8092d5:	48 89 ee             	mov    %rbp,%rsi
  8092d8:	44 89 e7             	mov    %r12d,%edi
  8092db:	e8 f0 79 bf ff       	call   400cd0 <write@plt>
  8092e0:	48 85 c0             	test   %rax,%rax
  8092e3:	7f e2                	jg     8092c7 <rio_writen+0x18>
  8092e5:	e8 96 79 bf ff       	call   400c80 <__errno_location@plt>
  8092ea:	83 38 04             	cmpl   $0x4,(%rax)
  8092ed:	75 15                	jne    809304 <rio_writen+0x55>
  8092ef:	b8 00 00 00 00       	mov    $0x0,%eax
  8092f4:	eb d1                	jmp    8092c7 <rio_writen+0x18>
  8092f6:	4c 89 e8             	mov    %r13,%rax
  8092f9:	48 83 c4 08          	add    $0x8,%rsp
  8092fd:	5b                   	pop    %rbx
  8092fe:	5d                   	pop    %rbp
  8092ff:	41 5c                	pop    %r12
  809301:	41 5d                	pop    %r13
  809303:	c3                   	ret
  809304:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  80930b:	eb ec                	jmp    8092f9 <rio_writen+0x4a>

000000000080930d <rio_read>:
  80930d:	41 55                	push   %r13
  80930f:	41 54                	push   %r12
  809311:	55                   	push   %rbp
  809312:	53                   	push   %rbx
  809313:	48 83 ec 08          	sub    $0x8,%rsp
  809317:	48 89 fb             	mov    %rdi,%rbx
  80931a:	49 89 f5             	mov    %rsi,%r13
  80931d:	49 89 d4             	mov    %rdx,%r12
  809320:	eb 0a                	jmp    80932c <rio_read+0x1f>
  809322:	e8 59 79 bf ff       	call   400c80 <__errno_location@plt>
  809327:	83 38 04             	cmpl   $0x4,(%rax)
  80932a:	75 5c                	jne    809388 <rio_read+0x7b>
  80932c:	8b 6b 04             	mov    0x4(%rbx),%ebp
  80932f:	85 ed                	test   %ebp,%ebp
  809331:	7f 24                	jg     809357 <rio_read+0x4a>
  809333:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  809337:	8b 3b                	mov    (%rbx),%edi
  809339:	ba 00 20 00 00       	mov    $0x2000,%edx
  80933e:	48 89 ee             	mov    %rbp,%rsi
  809341:	e8 ea 79 bf ff       	call   400d30 <read@plt>
  809346:	89 43 04             	mov    %eax,0x4(%rbx)
  809349:	85 c0                	test   %eax,%eax
  80934b:	78 d5                	js     809322 <rio_read+0x15>
  80934d:	85 c0                	test   %eax,%eax
  80934f:	74 40                	je     809391 <rio_read+0x84>
  809351:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  809355:	eb d5                	jmp    80932c <rio_read+0x1f>
  809357:	89 e8                	mov    %ebp,%eax
  809359:	4c 39 e0             	cmp    %r12,%rax
  80935c:	72 03                	jb     809361 <rio_read+0x54>
  80935e:	44 89 e5             	mov    %r12d,%ebp
  809361:	4c 63 e5             	movslq %ebp,%r12
  809364:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  809368:	4c 89 e2             	mov    %r12,%rdx
  80936b:	4c 89 ef             	mov    %r13,%rdi
  80936e:	e8 0d 7a bf ff       	call   400d80 <memcpy@plt>
  809373:	4c 01 63 08          	add    %r12,0x8(%rbx)
  809377:	29 6b 04             	sub    %ebp,0x4(%rbx)
  80937a:	4c 89 e0             	mov    %r12,%rax
  80937d:	48 83 c4 08          	add    $0x8,%rsp
  809381:	5b                   	pop    %rbx
  809382:	5d                   	pop    %rbp
  809383:	41 5c                	pop    %r12
  809385:	41 5d                	pop    %r13
  809387:	c3                   	ret
  809388:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  80938f:	eb ec                	jmp    80937d <rio_read+0x70>
  809391:	b8 00 00 00 00       	mov    $0x0,%eax
  809396:	eb e5                	jmp    80937d <rio_read+0x70>

0000000000809398 <rio_readlineb>:
  809398:	41 55                	push   %r13
  80939a:	41 54                	push   %r12
  80939c:	55                   	push   %rbp
  80939d:	53                   	push   %rbx
  80939e:	48 83 ec 18          	sub    $0x18,%rsp
  8093a2:	49 89 fd             	mov    %rdi,%r13
  8093a5:	48 89 f5             	mov    %rsi,%rbp
  8093a8:	49 89 d4             	mov    %rdx,%r12
  8093ab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8093b2:	00 00 
  8093b4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  8093b9:	31 c0                	xor    %eax,%eax
  8093bb:	bb 01 00 00 00       	mov    $0x1,%ebx
  8093c0:	4c 39 e3             	cmp    %r12,%rbx
  8093c3:	73 47                	jae    80940c <rio_readlineb+0x74>
  8093c5:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  8093ca:	ba 01 00 00 00       	mov    $0x1,%edx
  8093cf:	4c 89 ef             	mov    %r13,%rdi
  8093d2:	e8 36 ff ff ff       	call   80930d <rio_read>
  8093d7:	83 f8 01             	cmp    $0x1,%eax
  8093da:	75 1c                	jne    8093f8 <rio_readlineb+0x60>
  8093dc:	48 8d 45 01          	lea    0x1(%rbp),%rax
  8093e0:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  8093e5:	88 55 00             	mov    %dl,0x0(%rbp)
  8093e8:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  8093ed:	74 1a                	je     809409 <rio_readlineb+0x71>
  8093ef:	48 83 c3 01          	add    $0x1,%rbx
  8093f3:	48 89 c5             	mov    %rax,%rbp
  8093f6:	eb c8                	jmp    8093c0 <rio_readlineb+0x28>
  8093f8:	85 c0                	test   %eax,%eax
  8093fa:	75 32                	jne    80942e <rio_readlineb+0x96>
  8093fc:	48 83 fb 01          	cmp    $0x1,%rbx
  809400:	75 0a                	jne    80940c <rio_readlineb+0x74>
  809402:	b8 00 00 00 00       	mov    $0x0,%eax
  809407:	eb 0a                	jmp    809413 <rio_readlineb+0x7b>
  809409:	48 89 c5             	mov    %rax,%rbp
  80940c:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  809410:	48 89 d8             	mov    %rbx,%rax
  809413:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  809418:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  80941f:	00 00 
  809421:	75 14                	jne    809437 <rio_readlineb+0x9f>
  809423:	48 83 c4 18          	add    $0x18,%rsp
  809427:	5b                   	pop    %rbx
  809428:	5d                   	pop    %rbp
  809429:	41 5c                	pop    %r12
  80942b:	41 5d                	pop    %r13
  80942d:	c3                   	ret
  80942e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  809435:	eb dc                	jmp    809413 <rio_readlineb+0x7b>
  809437:	e8 a4 78 bf ff       	call   400ce0 <__stack_chk_fail@plt>

000000000080943c <urlencode>:
  80943c:	41 54                	push   %r12
  80943e:	55                   	push   %rbp
  80943f:	53                   	push   %rbx
  809440:	48 83 ec 10          	sub    $0x10,%rsp
  809444:	48 89 fb             	mov    %rdi,%rbx
  809447:	48 89 f5             	mov    %rsi,%rbp
  80944a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809451:	00 00 
  809453:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  809458:	31 c0                	xor    %eax,%eax
  80945a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  809461:	f2 ae                	repnz scas %es:(%rdi),%al
  809463:	48 89 ce             	mov    %rcx,%rsi
  809466:	48 f7 d6             	not    %rsi
  809469:	8d 46 ff             	lea    -0x1(%rsi),%eax
  80946c:	eb 0f                	jmp    80947d <urlencode+0x41>
  80946e:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  809472:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  809476:	48 83 c3 01          	add    $0x1,%rbx
  80947a:	44 89 e0             	mov    %r12d,%eax
  80947d:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  809481:	85 c0                	test   %eax,%eax
  809483:	0f 84 a8 00 00 00    	je     809531 <urlencode+0xf5>
  809489:	44 0f b6 03          	movzbl (%rbx),%r8d
  80948d:	41 80 f8 2a          	cmp    $0x2a,%r8b
  809491:	0f 94 c2             	sete   %dl
  809494:	41 80 f8 2d          	cmp    $0x2d,%r8b
  809498:	0f 94 c0             	sete   %al
  80949b:	08 c2                	or     %al,%dl
  80949d:	75 cf                	jne    80946e <urlencode+0x32>
  80949f:	41 80 f8 2e          	cmp    $0x2e,%r8b
  8094a3:	74 c9                	je     80946e <urlencode+0x32>
  8094a5:	41 80 f8 5f          	cmp    $0x5f,%r8b
  8094a9:	74 c3                	je     80946e <urlencode+0x32>
  8094ab:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  8094af:	3c 09                	cmp    $0x9,%al
  8094b1:	76 bb                	jbe    80946e <urlencode+0x32>
  8094b3:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  8094b7:	3c 19                	cmp    $0x19,%al
  8094b9:	76 b3                	jbe    80946e <urlencode+0x32>
  8094bb:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  8094bf:	3c 19                	cmp    $0x19,%al
  8094c1:	76 ab                	jbe    80946e <urlencode+0x32>
  8094c3:	41 80 f8 20          	cmp    $0x20,%r8b
  8094c7:	74 56                	je     80951f <urlencode+0xe3>
  8094c9:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  8094cd:	3c 5f                	cmp    $0x5f,%al
  8094cf:	0f 96 c2             	setbe  %dl
  8094d2:	41 80 f8 09          	cmp    $0x9,%r8b
  8094d6:	0f 94 c0             	sete   %al
  8094d9:	08 c2                	or     %al,%dl
  8094db:	74 4f                	je     80952c <urlencode+0xf0>
  8094dd:	48 89 e7             	mov    %rsp,%rdi
  8094e0:	45 0f b6 c0          	movzbl %r8b,%r8d
  8094e4:	48 8d 0d 8d 12 00 00 	lea    0x128d(%rip),%rcx        # 80a778 <trans_char+0xa8>
  8094eb:	ba 08 00 00 00       	mov    $0x8,%edx
  8094f0:	be 01 00 00 00       	mov    $0x1,%esi
  8094f5:	b8 00 00 00 00       	mov    $0x0,%eax
  8094fa:	e8 51 79 bf ff       	call   400e50 <__sprintf_chk@plt>
  8094ff:	0f b6 04 24          	movzbl (%rsp),%eax
  809503:	88 45 00             	mov    %al,0x0(%rbp)
  809506:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  80950b:	88 45 01             	mov    %al,0x1(%rbp)
  80950e:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  809513:	88 45 02             	mov    %al,0x2(%rbp)
  809516:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  80951a:	e9 57 ff ff ff       	jmp    809476 <urlencode+0x3a>
  80951f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  809523:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  809527:	e9 4a ff ff ff       	jmp    809476 <urlencode+0x3a>
  80952c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809531:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  809536:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  80953d:	00 00 
  80953f:	75 09                	jne    80954a <urlencode+0x10e>
  809541:	48 83 c4 10          	add    $0x10,%rsp
  809545:	5b                   	pop    %rbx
  809546:	5d                   	pop    %rbp
  809547:	41 5c                	pop    %r12
  809549:	c3                   	ret
  80954a:	e8 91 77 bf ff       	call   400ce0 <__stack_chk_fail@plt>

000000000080954f <submitr>:
  80954f:	41 57                	push   %r15
  809551:	41 56                	push   %r14
  809553:	41 55                	push   %r13
  809555:	41 54                	push   %r12
  809557:	55                   	push   %rbp
  809558:	53                   	push   %rbx
  809559:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  809560:	49 89 fd             	mov    %rdi,%r13
  809563:	89 74 24 14          	mov    %esi,0x14(%rsp)
  809567:	49 89 d7             	mov    %rdx,%r15
  80956a:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  80956f:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  809574:	4d 89 ce             	mov    %r9,%r14
  809577:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  80957e:	00 
  80957f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809586:	00 00 
  809588:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  80958f:	00 
  809590:	31 c0                	xor    %eax,%eax
  809592:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  809599:	00 
  80959a:	ba 00 00 00 00       	mov    $0x0,%edx
  80959f:	be 01 00 00 00       	mov    $0x1,%esi
  8095a4:	bf 02 00 00 00       	mov    $0x2,%edi
  8095a9:	e8 b2 78 bf ff       	call   400e60 <socket@plt>
  8095ae:	85 c0                	test   %eax,%eax
  8095b0:	0f 88 a9 02 00 00    	js     80985f <submitr+0x310>
  8095b6:	89 c3                	mov    %eax,%ebx
  8095b8:	4c 89 ef             	mov    %r13,%rdi
  8095bb:	e8 90 77 bf ff       	call   400d50 <gethostbyname@plt>
  8095c0:	48 85 c0             	test   %rax,%rax
  8095c3:	0f 84 e2 02 00 00    	je     8098ab <submitr+0x35c>
  8095c9:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  8095ce:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  8095d5:	00 00 
  8095d7:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  8095de:	00 
  8095df:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  8095e6:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  8095ed:	48 63 50 14          	movslq 0x14(%rax),%rdx
  8095f1:	48 8b 40 18          	mov    0x18(%rax),%rax
  8095f5:	48 8b 30             	mov    (%rax),%rsi
  8095f8:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  8095fd:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809602:	e8 59 77 bf ff       	call   400d60 <__memmove_chk@plt>
  809607:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  80960c:	66 c1 c8 08          	ror    $0x8,%ax
  809610:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  809615:	ba 10 00 00 00       	mov    $0x10,%edx
  80961a:	4c 89 e6             	mov    %r12,%rsi
  80961d:	89 df                	mov    %ebx,%edi
  80961f:	e8 0c 78 bf ff       	call   400e30 <connect@plt>
  809624:	85 c0                	test   %eax,%eax
  809626:	0f 88 e7 02 00 00    	js     809913 <submitr+0x3c4>
  80962c:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  809633:	b8 00 00 00 00       	mov    $0x0,%eax
  809638:	48 89 f1             	mov    %rsi,%rcx
  80963b:	4c 89 f7             	mov    %r14,%rdi
  80963e:	f2 ae                	repnz scas %es:(%rdi),%al
  809640:	48 89 ca             	mov    %rcx,%rdx
  809643:	48 f7 d2             	not    %rdx
  809646:	48 89 f1             	mov    %rsi,%rcx
  809649:	4c 89 ff             	mov    %r15,%rdi
  80964c:	f2 ae                	repnz scas %es:(%rdi),%al
  80964e:	48 f7 d1             	not    %rcx
  809651:	49 89 c8             	mov    %rcx,%r8
  809654:	48 89 f1             	mov    %rsi,%rcx
  809657:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  80965c:	f2 ae                	repnz scas %es:(%rdi),%al
  80965e:	48 f7 d1             	not    %rcx
  809661:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  809666:	48 89 f1             	mov    %rsi,%rcx
  809669:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  80966e:	f2 ae                	repnz scas %es:(%rdi),%al
  809670:	48 89 c8             	mov    %rcx,%rax
  809673:	48 f7 d0             	not    %rax
  809676:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  80967b:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  809680:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  809687:	00 
  809688:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  80968e:	0f 87 d9 02 00 00    	ja     80996d <submitr+0x41e>
  809694:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  80969b:	00 
  80969c:	b9 00 04 00 00       	mov    $0x400,%ecx
  8096a1:	b8 00 00 00 00       	mov    $0x0,%eax
  8096a6:	48 89 f7             	mov    %rsi,%rdi
  8096a9:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  8096ac:	4c 89 f7             	mov    %r14,%rdi
  8096af:	e8 88 fd ff ff       	call   80943c <urlencode>
  8096b4:	85 c0                	test   %eax,%eax
  8096b6:	0f 88 24 03 00 00    	js     8099e0 <submitr+0x491>
  8096bc:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  8096c3:	00 
  8096c4:	41 55                	push   %r13
  8096c6:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  8096cd:	00 
  8096ce:	50                   	push   %rax
  8096cf:	4d 89 f9             	mov    %r15,%r9
  8096d2:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  8096d7:	48 8d 0d 2a 10 00 00 	lea    0x102a(%rip),%rcx        # 80a708 <trans_char+0x38>
  8096de:	ba 00 20 00 00       	mov    $0x2000,%edx
  8096e3:	be 01 00 00 00       	mov    $0x1,%esi
  8096e8:	4c 89 e7             	mov    %r12,%rdi
  8096eb:	b8 00 00 00 00       	mov    $0x0,%eax
  8096f0:	e8 5b 77 bf ff       	call   400e50 <__sprintf_chk@plt>
  8096f5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  8096fc:	b8 00 00 00 00       	mov    $0x0,%eax
  809701:	4c 89 e7             	mov    %r12,%rdi
  809704:	f2 ae                	repnz scas %es:(%rdi),%al
  809706:	48 89 ca             	mov    %rcx,%rdx
  809709:	48 f7 d2             	not    %rdx
  80970c:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  809710:	4c 89 e6             	mov    %r12,%rsi
  809713:	89 df                	mov    %ebx,%edi
  809715:	e8 95 fb ff ff       	call   8092af <rio_writen>
  80971a:	48 83 c4 10          	add    $0x10,%rsp
  80971e:	48 85 c0             	test   %rax,%rax
  809721:	0f 88 44 03 00 00    	js     809a6b <submitr+0x51c>
  809727:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  80972c:	89 de                	mov    %ebx,%esi
  80972e:	4c 89 e7             	mov    %r12,%rdi
  809731:	e8 37 fb ff ff       	call   80926d <rio_readinitb>
  809736:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  80973d:	00 
  80973e:	ba 00 20 00 00       	mov    $0x2000,%edx
  809743:	4c 89 e7             	mov    %r12,%rdi
  809746:	e8 4d fc ff ff       	call   809398 <rio_readlineb>
  80974b:	48 85 c0             	test   %rax,%rax
  80974e:	0f 8e 86 03 00 00    	jle    809ada <submitr+0x58b>
  809754:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  809759:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  809760:	00 
  809761:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  809768:	00 
  809769:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  809770:	00 
  809771:	48 8d 35 07 10 00 00 	lea    0x1007(%rip),%rsi        # 80a77f <trans_char+0xaf>
  809778:	b8 00 00 00 00       	mov    $0x0,%eax
  80977d:	e8 3e 76 bf ff       	call   400dc0 <__isoc99_sscanf@plt>
  809782:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809789:	00 
  80978a:	b9 03 00 00 00       	mov    $0x3,%ecx
  80978f:	48 8d 3d 00 10 00 00 	lea    0x1000(%rip),%rdi        # 80a796 <trans_char+0xc6>
  809796:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809798:	0f 97 c0             	seta   %al
  80979b:	1c 00                	sbb    $0x0,%al
  80979d:	84 c0                	test   %al,%al
  80979f:	0f 84 b3 03 00 00    	je     809b58 <submitr+0x609>
  8097a5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8097ac:	00 
  8097ad:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  8097b2:	ba 00 20 00 00       	mov    $0x2000,%edx
  8097b7:	e8 dc fb ff ff       	call   809398 <rio_readlineb>
  8097bc:	48 85 c0             	test   %rax,%rax
  8097bf:	7f c1                	jg     809782 <submitr+0x233>
  8097c1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  8097c8:	3a 20 43 
  8097cb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  8097d2:	20 75 6e 
  8097d5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8097d9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8097dd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8097e4:	74 6f 20 
  8097e7:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  8097ee:	68 65 61 
  8097f1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8097f5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8097f9:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  809800:	66 72 6f 
  809803:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  80980a:	20 72 65 
  80980d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809811:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809815:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  80981c:	73 65 72 
  80981f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809823:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  80982a:	89 df                	mov    %ebx,%edi
  80982c:	e8 ef 74 bf ff       	call   400d20 <close@plt>
  809831:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809836:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  80983d:	00 
  80983e:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  809845:	00 00 
  809847:	0f 85 7e 04 00 00    	jne    809ccb <submitr+0x77c>
  80984d:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  809854:	5b                   	pop    %rbx
  809855:	5d                   	pop    %rbp
  809856:	41 5c                	pop    %r12
  809858:	41 5d                	pop    %r13
  80985a:	41 5e                	pop    %r14
  80985c:	41 5f                	pop    %r15
  80985e:	c3                   	ret
  80985f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809866:	3a 20 43 
  809869:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809870:	20 75 6e 
  809873:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809877:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  80987b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809882:	74 6f 20 
  809885:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  80988c:	65 20 73 
  80988f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809893:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809897:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  80989e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  8098a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8098a9:	eb 8b                	jmp    809836 <submitr+0x2e7>
  8098ab:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  8098b2:	3a 20 44 
  8098b5:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  8098bc:	20 75 6e 
  8098bf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8098c3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8098c7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8098ce:	74 6f 20 
  8098d1:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  8098d8:	76 65 20 
  8098db:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8098df:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8098e3:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  8098ea:	72 20 61 
  8098ed:	48 89 45 20          	mov    %rax,0x20(%rbp)
  8098f1:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  8098f8:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  8098fe:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  809902:	89 df                	mov    %ebx,%edi
  809904:	e8 17 74 bf ff       	call   400d20 <close@plt>
  809909:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80990e:	e9 23 ff ff ff       	jmp    809836 <submitr+0x2e7>
  809913:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  80991a:	3a 20 55 
  80991d:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809924:	20 74 6f 
  809927:	48 89 45 00          	mov    %rax,0x0(%rbp)
  80992b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  80992f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  809936:	65 63 74 
  809939:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  809940:	68 65 20 
  809943:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809947:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  80994b:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  809952:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  809958:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  80995c:	89 df                	mov    %ebx,%edi
  80995e:	e8 bd 73 bf ff       	call   400d20 <close@plt>
  809963:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809968:	e9 c9 fe ff ff       	jmp    809836 <submitr+0x2e7>
  80996d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809974:	3a 20 52 
  809977:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  80997e:	20 73 74 
  809981:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809985:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809989:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  809990:	74 6f 6f 
  809993:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  80999a:	65 2e 20 
  80999d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8099a1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8099a5:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  8099ac:	61 73 65 
  8099af:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  8099b6:	49 54 52 
  8099b9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  8099bd:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  8099c1:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  8099c8:	55 46 00 
  8099cb:	48 89 45 30          	mov    %rax,0x30(%rbp)
  8099cf:	89 df                	mov    %ebx,%edi
  8099d1:	e8 4a 73 bf ff       	call   400d20 <close@plt>
  8099d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8099db:	e9 56 fe ff ff       	jmp    809836 <submitr+0x2e7>
  8099e0:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  8099e7:	3a 20 52 
  8099ea:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  8099f1:	20 73 74 
  8099f4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8099f8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8099fc:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  809a03:	63 6f 6e 
  809a06:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  809a0d:	20 61 6e 
  809a10:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809a14:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809a18:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  809a1f:	67 61 6c 
  809a22:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  809a29:	6e 70 72 
  809a2c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809a30:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809a34:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  809a3b:	6c 65 20 
  809a3e:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  809a45:	63 74 65 
  809a48:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809a4c:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  809a50:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  809a56:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  809a5a:	89 df                	mov    %ebx,%edi
  809a5c:	e8 bf 72 bf ff       	call   400d20 <close@plt>
  809a61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809a66:	e9 cb fd ff ff       	jmp    809836 <submitr+0x2e7>
  809a6b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809a72:	3a 20 43 
  809a75:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809a7c:	20 75 6e 
  809a7f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809a83:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809a87:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809a8e:	74 6f 20 
  809a91:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  809a98:	20 74 6f 
  809a9b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809a9f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809aa3:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  809aaa:	72 65 73 
  809aad:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  809ab4:	65 72 76 
  809ab7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809abb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809abf:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  809ac5:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  809ac9:	89 df                	mov    %ebx,%edi
  809acb:	e8 50 72 bf ff       	call   400d20 <close@plt>
  809ad0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809ad5:	e9 5c fd ff ff       	jmp    809836 <submitr+0x2e7>
  809ada:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809ae1:	3a 20 43 
  809ae4:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809aeb:	20 75 6e 
  809aee:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809af2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809af6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809afd:	74 6f 20 
  809b00:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  809b07:	66 69 72 
  809b0a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809b0e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809b12:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  809b19:	61 64 65 
  809b1c:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  809b23:	6d 20 72 
  809b26:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809b2a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809b2e:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  809b35:	20 73 65 
  809b38:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809b3c:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  809b43:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  809b47:	89 df                	mov    %ebx,%edi
  809b49:	e8 d2 71 bf ff       	call   400d20 <close@plt>
  809b4e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809b53:	e9 de fc ff ff       	jmp    809836 <submitr+0x2e7>
  809b58:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809b5f:	00 
  809b60:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  809b65:	ba 00 20 00 00       	mov    $0x2000,%edx
  809b6a:	e8 29 f8 ff ff       	call   809398 <rio_readlineb>
  809b6f:	48 85 c0             	test   %rax,%rax
  809b72:	0f 8e 96 00 00 00    	jle    809c0e <submitr+0x6bf>
  809b78:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  809b7d:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  809b84:	0f 85 08 01 00 00    	jne    809c92 <submitr+0x743>
  809b8a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809b91:	00 
  809b92:	48 89 ef             	mov    %rbp,%rdi
  809b95:	e8 16 71 bf ff       	call   400cb0 <strcpy@plt>
  809b9a:	89 df                	mov    %ebx,%edi
  809b9c:	e8 7f 71 bf ff       	call   400d20 <close@plt>
  809ba1:	b9 04 00 00 00       	mov    $0x4,%ecx
  809ba6:	48 8d 3d e3 0b 00 00 	lea    0xbe3(%rip),%rdi        # 80a790 <trans_char+0xc0>
  809bad:	48 89 ee             	mov    %rbp,%rsi
  809bb0:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809bb2:	0f 97 c0             	seta   %al
  809bb5:	1c 00                	sbb    $0x0,%al
  809bb7:	0f be c0             	movsbl %al,%eax
  809bba:	85 c0                	test   %eax,%eax
  809bbc:	0f 84 74 fc ff ff    	je     809836 <submitr+0x2e7>
  809bc2:	b9 05 00 00 00       	mov    $0x5,%ecx
  809bc7:	48 8d 3d c6 0b 00 00 	lea    0xbc6(%rip),%rdi        # 80a794 <trans_char+0xc4>
  809bce:	48 89 ee             	mov    %rbp,%rsi
  809bd1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809bd3:	0f 97 c0             	seta   %al
  809bd6:	1c 00                	sbb    $0x0,%al
  809bd8:	0f be c0             	movsbl %al,%eax
  809bdb:	85 c0                	test   %eax,%eax
  809bdd:	0f 84 53 fc ff ff    	je     809836 <submitr+0x2e7>
  809be3:	b9 03 00 00 00       	mov    $0x3,%ecx
  809be8:	48 8d 3d aa 0b 00 00 	lea    0xbaa(%rip),%rdi        # 80a799 <trans_char+0xc9>
  809bef:	48 89 ee             	mov    %rbp,%rsi
  809bf2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809bf4:	0f 97 c0             	seta   %al
  809bf7:	1c 00                	sbb    $0x0,%al
  809bf9:	0f be c0             	movsbl %al,%eax
  809bfc:	85 c0                	test   %eax,%eax
  809bfe:	0f 84 32 fc ff ff    	je     809836 <submitr+0x2e7>
  809c04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809c09:	e9 28 fc ff ff       	jmp    809836 <submitr+0x2e7>
  809c0e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809c15:	3a 20 43 
  809c18:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809c1f:	20 75 6e 
  809c22:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809c26:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809c2a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809c31:	74 6f 20 
  809c34:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  809c3b:	73 74 61 
  809c3e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809c42:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809c46:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  809c4d:	65 73 73 
  809c50:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  809c57:	72 6f 6d 
  809c5a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809c5e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809c62:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  809c69:	6c 74 20 
  809c6c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809c70:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  809c77:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  809c7d:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  809c81:	89 df                	mov    %ebx,%edi
  809c83:	e8 98 70 bf ff       	call   400d20 <close@plt>
  809c88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809c8d:	e9 a4 fb ff ff       	jmp    809836 <submitr+0x2e7>
  809c92:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  809c99:	00 
  809c9a:	48 8d 0d a7 0a 00 00 	lea    0xaa7(%rip),%rcx        # 80a748 <trans_char+0x78>
  809ca1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  809ca8:	be 01 00 00 00       	mov    $0x1,%esi
  809cad:	48 89 ef             	mov    %rbp,%rdi
  809cb0:	b8 00 00 00 00       	mov    $0x0,%eax
  809cb5:	e8 96 71 bf ff       	call   400e50 <__sprintf_chk@plt>
  809cba:	89 df                	mov    %ebx,%edi
  809cbc:	e8 5f 70 bf ff       	call   400d20 <close@plt>
  809cc1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809cc6:	e9 6b fb ff ff       	jmp    809836 <submitr+0x2e7>
  809ccb:	e8 10 70 bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809cd0 <init_timeout>:
  809cd0:	85 ff                	test   %edi,%edi
  809cd2:	74 28                	je     809cfc <init_timeout+0x2c>
  809cd4:	53                   	push   %rbx
  809cd5:	89 fb                	mov    %edi,%ebx
  809cd7:	85 ff                	test   %edi,%edi
  809cd9:	78 1a                	js     809cf5 <init_timeout+0x25>
  809cdb:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 80927f <sigalrm_handler>
  809ce2:	bf 0e 00 00 00       	mov    $0xe,%edi
  809ce7:	e8 54 70 bf ff       	call   400d40 <signal@plt>
  809cec:	89 df                	mov    %ebx,%edi
  809cee:	e8 1d 70 bf ff       	call   400d10 <alarm@plt>
  809cf3:	5b                   	pop    %rbx
  809cf4:	c3                   	ret
  809cf5:	bb 00 00 00 00       	mov    $0x0,%ebx
  809cfa:	eb df                	jmp    809cdb <init_timeout+0xb>
  809cfc:	f3 c3                	repz ret

0000000000809cfe <init_driver>:
  809cfe:	41 54                	push   %r12
  809d00:	55                   	push   %rbp
  809d01:	53                   	push   %rbx
  809d02:	48 83 ec 20          	sub    $0x20,%rsp
  809d06:	49 89 fc             	mov    %rdi,%r12
  809d09:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809d10:	00 00 
  809d12:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  809d17:	31 c0                	xor    %eax,%eax
  809d19:	be 01 00 00 00       	mov    $0x1,%esi
  809d1e:	bf 0d 00 00 00       	mov    $0xd,%edi
  809d23:	e8 18 70 bf ff       	call   400d40 <signal@plt>
  809d28:	be 01 00 00 00       	mov    $0x1,%esi
  809d2d:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809d32:	e8 09 70 bf ff       	call   400d40 <signal@plt>
  809d37:	be 01 00 00 00       	mov    $0x1,%esi
  809d3c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809d41:	e8 fa 6f bf ff       	call   400d40 <signal@plt>
  809d46:	ba 00 00 00 00       	mov    $0x0,%edx
  809d4b:	be 01 00 00 00       	mov    $0x1,%esi
  809d50:	bf 02 00 00 00       	mov    $0x2,%edi
  809d55:	e8 06 71 bf ff       	call   400e60 <socket@plt>
  809d5a:	85 c0                	test   %eax,%eax
  809d5c:	0f 88 a3 00 00 00    	js     809e05 <init_driver+0x107>
  809d62:	89 c3                	mov    %eax,%ebx
  809d64:	48 8d 3d 56 05 00 00 	lea    0x556(%rip),%rdi        # 80a2c1 <_IO_stdin_used+0x251>
  809d6b:	e8 e0 6f bf ff       	call   400d50 <gethostbyname@plt>
  809d70:	48 85 c0             	test   %rax,%rax
  809d73:	0f 84 df 00 00 00    	je     809e58 <init_driver+0x15a>
  809d79:	48 89 e5             	mov    %rsp,%rbp
  809d7c:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  809d83:	00 00 
  809d85:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  809d8c:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  809d92:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  809d98:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809d9c:	48 8b 40 18          	mov    0x18(%rax),%rax
  809da0:	48 8b 30             	mov    (%rax),%rsi
  809da3:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  809da7:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809dac:	e8 af 6f bf ff       	call   400d60 <__memmove_chk@plt>
  809db1:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  809db8:	ba 10 00 00 00       	mov    $0x10,%edx
  809dbd:	48 89 ee             	mov    %rbp,%rsi
  809dc0:	89 df                	mov    %ebx,%edi
  809dc2:	e8 69 70 bf ff       	call   400e30 <connect@plt>
  809dc7:	85 c0                	test   %eax,%eax
  809dc9:	0f 88 fb 00 00 00    	js     809eca <init_driver+0x1cc>
  809dcf:	89 df                	mov    %ebx,%edi
  809dd1:	e8 4a 6f bf ff       	call   400d20 <close@plt>
  809dd6:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  809ddd:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  809de3:	b8 00 00 00 00       	mov    $0x0,%eax
  809de8:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  809ded:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809df4:	00 00 
  809df6:	0f 85 28 01 00 00    	jne    809f24 <init_driver+0x226>
  809dfc:	48 83 c4 20          	add    $0x20,%rsp
  809e00:	5b                   	pop    %rbx
  809e01:	5d                   	pop    %rbp
  809e02:	41 5c                	pop    %r12
  809e04:	c3                   	ret
  809e05:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809e0c:	3a 20 43 
  809e0f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809e16:	20 75 6e 
  809e19:	49 89 04 24          	mov    %rax,(%r12)
  809e1d:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809e22:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809e29:	74 6f 20 
  809e2c:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  809e33:	65 20 73 
  809e36:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809e3b:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809e40:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  809e47:	6b 65 
  809e49:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  809e50:	00 
  809e51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809e56:	eb 90                	jmp    809de8 <init_driver+0xea>
  809e58:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  809e5f:	3a 20 44 
  809e62:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  809e69:	20 75 6e 
  809e6c:	49 89 04 24          	mov    %rax,(%r12)
  809e70:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809e75:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809e7c:	74 6f 20 
  809e7f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  809e86:	76 65 20 
  809e89:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809e8e:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809e93:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  809e9a:	72 20 61 
  809e9d:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  809ea2:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  809ea9:	72 65 
  809eab:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  809eb2:	73 
  809eb3:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  809eb9:	89 df                	mov    %ebx,%edi
  809ebb:	e8 60 6e bf ff       	call   400d20 <close@plt>
  809ec0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809ec5:	e9 1e ff ff ff       	jmp    809de8 <init_driver+0xea>
  809eca:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  809ed1:	3a 20 55 
  809ed4:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809edb:	20 74 6f 
  809ede:	49 89 04 24          	mov    %rax,(%r12)
  809ee2:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809ee7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  809eee:	65 63 74 
  809ef1:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  809ef8:	65 72 76 
  809efb:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809f00:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809f05:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  809f0c:	72 
  809f0d:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  809f13:	89 df                	mov    %ebx,%edi
  809f15:	e8 06 6e bf ff       	call   400d20 <close@plt>
  809f1a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809f1f:	e9 c4 fe ff ff       	jmp    809de8 <init_driver+0xea>
  809f24:	e8 b7 6d bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809f29 <driver_post>:
  809f29:	53                   	push   %rbx
  809f2a:	4c 89 cb             	mov    %r9,%rbx
  809f2d:	45 85 c0             	test   %r8d,%r8d
  809f30:	75 18                	jne    809f4a <driver_post+0x21>
  809f32:	48 85 ff             	test   %rdi,%rdi
  809f35:	74 05                	je     809f3c <driver_post+0x13>
  809f37:	80 3f 00             	cmpb   $0x0,(%rdi)
  809f3a:	75 37                	jne    809f73 <driver_post+0x4a>
  809f3c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  809f41:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  809f45:	44 89 c0             	mov    %r8d,%eax
  809f48:	5b                   	pop    %rbx
  809f49:	c3                   	ret
  809f4a:	48 89 ca             	mov    %rcx,%rdx
  809f4d:	48 8d 35 48 08 00 00 	lea    0x848(%rip),%rsi        # 80a79c <trans_char+0xcc>
  809f54:	bf 01 00 00 00       	mov    $0x1,%edi
  809f59:	b8 00 00 00 00       	mov    $0x0,%eax
  809f5e:	e8 7d 6e bf ff       	call   400de0 <__printf_chk@plt>
  809f63:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  809f68:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  809f6c:	b8 00 00 00 00       	mov    $0x0,%eax
  809f71:	eb d5                	jmp    809f48 <driver_post+0x1f>
  809f73:	48 83 ec 08          	sub    $0x8,%rsp
  809f77:	41 51                	push   %r9
  809f79:	49 89 c9             	mov    %rcx,%r9
  809f7c:	49 89 d0             	mov    %rdx,%r8
  809f7f:	48 89 f9             	mov    %rdi,%rcx
  809f82:	48 89 f2             	mov    %rsi,%rdx
  809f85:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  809f8a:	48 8d 3d 30 03 00 00 	lea    0x330(%rip),%rdi        # 80a2c1 <_IO_stdin_used+0x251>
  809f91:	e8 b9 f5 ff ff       	call   80954f <submitr>
  809f96:	48 83 c4 10          	add    $0x10,%rsp
  809f9a:	eb ac                	jmp    809f48 <driver_post+0x1f>

0000000000809f9c <check>:
  809f9c:	89 f8                	mov    %edi,%eax
  809f9e:	c1 e8 1c             	shr    $0x1c,%eax
  809fa1:	85 c0                	test   %eax,%eax
  809fa3:	74 1d                	je     809fc2 <check+0x26>
  809fa5:	b9 00 00 00 00       	mov    $0x0,%ecx
  809faa:	83 f9 1f             	cmp    $0x1f,%ecx
  809fad:	7f 0d                	jg     809fbc <check+0x20>
  809faf:	89 f8                	mov    %edi,%eax
  809fb1:	d3 e8                	shr    %cl,%eax
  809fb3:	3c 0a                	cmp    $0xa,%al
  809fb5:	74 11                	je     809fc8 <check+0x2c>
  809fb7:	83 c1 08             	add    $0x8,%ecx
  809fba:	eb ee                	jmp    809faa <check+0xe>
  809fbc:	b8 01 00 00 00       	mov    $0x1,%eax
  809fc1:	c3                   	ret
  809fc2:	b8 00 00 00 00       	mov    $0x0,%eax
  809fc7:	c3                   	ret
  809fc8:	b8 00 00 00 00       	mov    $0x0,%eax
  809fcd:	c3                   	ret

0000000000809fce <gencookie>:
  809fce:	53                   	push   %rbx
  809fcf:	83 c7 01             	add    $0x1,%edi
  809fd2:	e8 b9 6c bf ff       	call   400c90 <srandom@plt>
  809fd7:	e8 c4 6d bf ff       	call   400da0 <random@plt>
  809fdc:	89 c3                	mov    %eax,%ebx
  809fde:	89 c7                	mov    %eax,%edi
  809fe0:	e8 b7 ff ff ff       	call   809f9c <check>
  809fe5:	85 c0                	test   %eax,%eax
  809fe7:	74 ee                	je     809fd7 <gencookie+0x9>
  809fe9:	89 d8                	mov    %ebx,%eax
  809feb:	5b                   	pop    %rbx
  809fec:	c3                   	ret
  809fed:	0f 1f 00             	nopl   (%rax)

0000000000809ff0 <__libc_csu_init>:
  809ff0:	41 57                	push   %r15
  809ff2:	41 56                	push   %r14
  809ff4:	49 89 d7             	mov    %rdx,%r15
  809ff7:	41 55                	push   %r13
  809ff9:	41 54                	push   %r12
  809ffb:	4c 8d 25 0e 1e 20 00 	lea    0x201e0e(%rip),%r12        # a0be10 <__frame_dummy_init_array_entry>
  80a002:	55                   	push   %rbp
  80a003:	48 8d 2d 0e 1e 20 00 	lea    0x201e0e(%rip),%rbp        # a0be18 <__do_global_dtors_aux_fini_array_entry>
  80a00a:	53                   	push   %rbx
  80a00b:	41 89 fd             	mov    %edi,%r13d
  80a00e:	49 89 f6             	mov    %rsi,%r14
  80a011:	4c 29 e5             	sub    %r12,%rbp
  80a014:	48 83 ec 08          	sub    $0x8,%rsp
  80a018:	48 c1 fd 03          	sar    $0x3,%rbp
  80a01c:	e8 27 6c bf ff       	call   400c48 <_init>
  80a021:	48 85 ed             	test   %rbp,%rbp
  80a024:	74 20                	je     80a046 <__libc_csu_init+0x56>
  80a026:	31 db                	xor    %ebx,%ebx
  80a028:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80a02f:	00 
  80a030:	4c 89 fa             	mov    %r15,%rdx
  80a033:	4c 89 f6             	mov    %r14,%rsi
  80a036:	44 89 ef             	mov    %r13d,%edi
  80a039:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  80a03d:	48 83 c3 01          	add    $0x1,%rbx
  80a041:	48 39 dd             	cmp    %rbx,%rbp
  80a044:	75 ea                	jne    80a030 <__libc_csu_init+0x40>
  80a046:	48 83 c4 08          	add    $0x8,%rsp
  80a04a:	5b                   	pop    %rbx
  80a04b:	5d                   	pop    %rbp
  80a04c:	41 5c                	pop    %r12
  80a04e:	41 5d                	pop    %r13
  80a050:	41 5e                	pop    %r14
  80a052:	41 5f                	pop    %r15
  80a054:	c3                   	ret
  80a055:	90                   	nop
  80a056:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  80a05d:	00 00 00 

000000000080a060 <__libc_csu_fini>:
  80a060:	f3 c3                	repz ret

Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 b3 60 00 	mov    0x60b3a5(%rip),%rax        # a0bff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	call   *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	ret

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 b3 60 00    	push   0x60b3a2(%rip)        # a0c008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 b3 60 00    	jmp    *0x60b3a4(%rip)        # a0c010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <__snprintf_chk@plt>:
  400c70:	ff 25 a2 b3 60 00    	jmp    *0x60b3a2(%rip)        # a0c018 <__snprintf_chk@GLIBC_2.3.4>
  400c76:	68 00 00 00 00       	push   $0x0
  400c7b:	e9 e0 ff ff ff       	jmp    400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a b3 60 00    	jmp    *0x60b39a(%rip)        # a0c020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	push   $0x1
  400c8b:	e9 d0 ff ff ff       	jmp    400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 b3 60 00    	jmp    *0x60b392(%rip)        # a0c028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	push   $0x2
  400c9b:	e9 c0 ff ff ff       	jmp    400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a b3 60 00    	jmp    *0x60b38a(%rip)        # a0c030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	push   $0x3
  400cab:	e9 b0 ff ff ff       	jmp    400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 b3 60 00    	jmp    *0x60b382(%rip)        # a0c038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	push   $0x4
  400cbb:	e9 a0 ff ff ff       	jmp    400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a b3 60 00    	jmp    *0x60b37a(%rip)        # a0c040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	push   $0x5
  400ccb:	e9 90 ff ff ff       	jmp    400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 b3 60 00    	jmp    *0x60b372(%rip)        # a0c048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	push   $0x6
  400cdb:	e9 80 ff ff ff       	jmp    400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a b3 60 00    	jmp    *0x60b36a(%rip)        # a0c050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	push   $0x7
  400ceb:	e9 70 ff ff ff       	jmp    400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 b3 60 00    	jmp    *0x60b362(%rip)        # a0c058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	push   $0x8
  400cfb:	e9 60 ff ff ff       	jmp    400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a b3 60 00    	jmp    *0x60b35a(%rip)        # a0c060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	push   $0x9
  400d0b:	e9 50 ff ff ff       	jmp    400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 b3 60 00    	jmp    *0x60b352(%rip)        # a0c068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	push   $0xa
  400d1b:	e9 40 ff ff ff       	jmp    400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a b3 60 00    	jmp    *0x60b34a(%rip)        # a0c070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	push   $0xb
  400d2b:	e9 30 ff ff ff       	jmp    400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 b3 60 00    	jmp    *0x60b342(%rip)        # a0c078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	push   $0xc
  400d3b:	e9 20 ff ff ff       	jmp    400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a b3 60 00    	jmp    *0x60b33a(%rip)        # a0c080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	push   $0xd
  400d4b:	e9 10 ff ff ff       	jmp    400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 b3 60 00    	jmp    *0x60b332(%rip)        # a0c088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	push   $0xe
  400d5b:	e9 00 ff ff ff       	jmp    400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a b3 60 00    	jmp    *0x60b32a(%rip)        # a0c090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	push   $0xf
  400d6b:	e9 f0 fe ff ff       	jmp    400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 b3 60 00    	jmp    *0x60b322(%rip)        # a0c098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	push   $0x10
  400d7b:	e9 e0 fe ff ff       	jmp    400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a b3 60 00    	jmp    *0x60b31a(%rip)        # a0c0a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	push   $0x11
  400d8b:	e9 d0 fe ff ff       	jmp    400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 b3 60 00    	jmp    *0x60b312(%rip)        # a0c0a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	push   $0x12
  400d9b:	e9 c0 fe ff ff       	jmp    400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a b3 60 00    	jmp    *0x60b30a(%rip)        # a0c0b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	push   $0x13
  400dab:	e9 b0 fe ff ff       	jmp    400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 b3 60 00    	jmp    *0x60b302(%rip)        # a0c0b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	push   $0x14
  400dbb:	e9 a0 fe ff ff       	jmp    400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa b2 60 00    	jmp    *0x60b2fa(%rip)        # a0c0c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	push   $0x15
  400dcb:	e9 90 fe ff ff       	jmp    400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 b2 60 00    	jmp    *0x60b2f2(%rip)        # a0c0c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	push   $0x16
  400ddb:	e9 80 fe ff ff       	jmp    400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea b2 60 00    	jmp    *0x60b2ea(%rip)        # a0c0d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	push   $0x17
  400deb:	e9 70 fe ff ff       	jmp    400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 b2 60 00    	jmp    *0x60b2e2(%rip)        # a0c0d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	push   $0x18
  400dfb:	e9 60 fe ff ff       	jmp    400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da b2 60 00    	jmp    *0x60b2da(%rip)        # a0c0e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	push   $0x19
  400e0b:	e9 50 fe ff ff       	jmp    400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 b2 60 00    	jmp    *0x60b2d2(%rip)        # a0c0e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	push   $0x1a
  400e1b:	e9 40 fe ff ff       	jmp    400c60 <.plt>

0000000000400e20 <exit@plt>:
  400e20:	ff 25 ca b2 60 00    	jmp    *0x60b2ca(%rip)        # a0c0f0 <exit@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	push   $0x1b
  400e2b:	e9 30 fe ff ff       	jmp    400c60 <.plt>

0000000000400e30 <connect@plt>:
  400e30:	ff 25 c2 b2 60 00    	jmp    *0x60b2c2(%rip)        # a0c0f8 <connect@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	push   $0x1c
  400e3b:	e9 20 fe ff ff       	jmp    400c60 <.plt>

0000000000400e40 <__fprintf_chk@plt>:
  400e40:	ff 25 ba b2 60 00    	jmp    *0x60b2ba(%rip)        # a0c100 <__fprintf_chk@GLIBC_2.3.4>
  400e46:	68 1d 00 00 00       	push   $0x1d
  400e4b:	e9 10 fe ff ff       	jmp    400c60 <.plt>

0000000000400e50 <__sprintf_chk@plt>:
  400e50:	ff 25 b2 b2 60 00    	jmp    *0x60b2b2(%rip)        # a0c108 <__sprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	push   $0x1e
  400e5b:	e9 00 fe ff ff       	jmp    400c60 <.plt>

0000000000400e60 <socket@plt>:
  400e60:	ff 25 aa b2 60 00    	jmp    *0x60b2aa(%rip)        # a0c110 <socket@GLIBC_2.2.5>
  400e66:	68 1f 00 00 00       	push   $0x1f
  400e6b:	e9 f0 fd ff ff       	jmp    400c60 <.plt>

Disassembly of section .fini:

000000000080a064 <_fini>:
  80a064:	48 83 ec 08          	sub    $0x8,%rsp
  80a068:	48 83 c4 08          	add    $0x8,%rsp
  80a06c:	c3                   	ret
