
rtarget:     file format elf64-x86-64


Disassembly of section .text:

0000000000808000 <_start>:
  808000:	31 ed                	xor    %ebp,%ebp
  808002:	49 89 d1             	mov    %rdx,%r9
  808005:	5e                   	pop    %rsi
  808006:	48 89 e2             	mov    %rsp,%rdx
  808009:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  80800d:	50                   	push   %rax
  80800e:	54                   	push   %rsp
  80800f:	49 c7 c0 80 a1 80 00 	mov    $0x80a180,%r8
  808016:	48 c7 c1 10 a1 80 00 	mov    $0x80a110,%rcx
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
  8080f7:	48 8d 35 9a 20 00 00 	lea    0x209a(%rip),%rsi        # 80a198 <_IO_stdin_used+0x8>
  8080fe:	bf 01 00 00 00       	mov    $0x1,%edi
  808103:	b8 00 00 00 00       	mov    $0x0,%eax
  808108:	e8 d3 8c bf ff       	call   400de0 <__printf_chk@plt>
  80810d:	48 8d 3d bc 20 00 00 	lea    0x20bc(%rip),%rdi        # 80a1d0 <_IO_stdin_used+0x40>
  808114:	e8 a7 8b bf ff       	call   400cc0 <puts@plt>
  808119:	48 8d 3d b0 21 00 00 	lea    0x21b0(%rip),%rdi        # 80a2d0 <_IO_stdin_used+0x140>
  808120:	e8 9b 8b bf ff       	call   400cc0 <puts@plt>
  808125:	48 8d 3d cc 20 00 00 	lea    0x20cc(%rip),%rdi        # 80a1f8 <_IO_stdin_used+0x68>
  80812c:	e8 8f 8b bf ff       	call   400cc0 <puts@plt>
  808131:	48 8d 3d b2 21 00 00 	lea    0x21b2(%rip),%rdi        # 80a2ea <_IO_stdin_used+0x15a>
  808138:	e8 83 8b bf ff       	call   400cc0 <puts@plt>
  80813d:	bf 00 00 00 00       	mov    $0x0,%edi
  808142:	e8 d9 8c bf ff       	call   400e20 <exit@plt>
  808147:	48 8d 35 b8 21 00 00 	lea    0x21b8(%rip),%rsi        # 80a306 <_IO_stdin_used+0x176>
  80814e:	bf 01 00 00 00       	mov    $0x1,%edi
  808153:	b8 00 00 00 00       	mov    $0x0,%eax
  808158:	e8 83 8c bf ff       	call   400de0 <__printf_chk@plt>
  80815d:	48 8d 3d bc 20 00 00 	lea    0x20bc(%rip),%rdi        # 80a220 <_IO_stdin_used+0x90>
  808164:	e8 57 8b bf ff       	call   400cc0 <puts@plt>
  808169:	48 8d 3d d8 20 00 00 	lea    0x20d8(%rip),%rdi        # 80a248 <_IO_stdin_used+0xb8>
  808170:	e8 4b 8b bf ff       	call   400cc0 <puts@plt>
  808175:	48 8d 3d a8 21 00 00 	lea    0x21a8(%rip),%rdi        # 80a324 <_IO_stdin_used+0x194>
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
  8081ad:	e8 3d 1f 00 00       	call   80a0ef <gencookie>
  8081b2:	89 05 4c 43 20 00    	mov    %eax,0x20434c(%rip)        # a0c504 <cookie>
  8081b8:	89 c7                	mov    %eax,%edi
  8081ba:	e8 30 1f 00 00       	call   80a0ef <gencookie>
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
  8081ff:	c6 05 2a 4f 20 00 72 	movb   $0x72,0x204f2a(%rip)        # a0d130 <target_prefix>
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
  808250:	e8 ca 1b 00 00       	call   809e1f <init_driver>
  808255:	85 c0                	test   %eax,%eax
  808257:	79 bf                	jns    808218 <initialize_target+0x95>
  808259:	48 89 e2             	mov    %rsp,%rdx
  80825c:	48 8d 35 15 20 00 00 	lea    0x2015(%rip),%rsi        # 80a278 <_IO_stdin_used+0xe8>
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
  80828f:	48 c7 c6 26 91 80 00 	mov    $0x809126,%rsi
  808296:	bf 0b 00 00 00       	mov    $0xb,%edi
  80829b:	e8 a0 8a bf ff       	call   400d40 <signal@plt>
  8082a0:	48 c7 c6 d2 90 80 00 	mov    $0x8090d2,%rsi
  8082a7:	bf 07 00 00 00       	mov    $0x7,%edi
  8082ac:	e8 8f 8a bf ff       	call   400d40 <signal@plt>
  8082b1:	48 c7 c6 7a 91 80 00 	mov    $0x80917a,%rsi
  8082b8:	bf 04 00 00 00       	mov    $0x4,%edi
  8082bd:	e8 7e 8a bf ff       	call   400d40 <signal@plt>
  8082c2:	83 3d 3f 42 20 00 00 	cmpl   $0x0,0x20423f(%rip)        # a0c508 <is_checker>
  8082c9:	75 26                	jne    8082f1 <main+0x70>
  8082cb:	48 8d 2d 6b 20 00 00 	lea    0x206b(%rip),%rbp        # 80a33d <_IO_stdin_used+0x1ad>
  8082d2:	48 8b 05 c7 41 20 00 	mov    0x2041c7(%rip),%rax        # a0c4a0 <stdin@GLIBC_2.2.5>
  8082d9:	48 89 05 10 42 20 00 	mov    %rax,0x204210(%rip)        # a0c4f0 <infile>
  8082e0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  8082e6:	41 be 00 00 00 00    	mov    $0x0,%r14d
  8082ec:	e9 8d 00 00 00       	jmp    80837e <main+0xfd>
  8082f1:	48 c7 c6 ce 91 80 00 	mov    $0x8091ce,%rsi
  8082f8:	bf 0e 00 00 00       	mov    $0xe,%edi
  8082fd:	e8 3e 8a bf ff       	call   400d40 <signal@plt>
  808302:	bf 05 00 00 00       	mov    $0x5,%edi
  808307:	e8 04 8a bf ff       	call   400d10 <alarm@plt>
  80830c:	48 8d 2d 2f 20 00 00 	lea    0x202f(%rip),%rbp        # 80a342 <_IO_stdin_used+0x1b2>
  808313:	eb bd                	jmp    8082d2 <main+0x51>
  808315:	48 8b 3b             	mov    (%rbx),%rdi
  808318:	e8 ca fd ff ff       	call   8080e7 <usage>
  80831d:	48 8d 35 91 22 00 00 	lea    0x2291(%rip),%rsi        # 80a5b5 <_IO_stdin_used+0x425>
  808324:	48 8b 3d 7d 41 20 00 	mov    0x20417d(%rip),%rdi        # a0c4a8 <optarg@GLIBC_2.2.5>
  80832b:	e8 c0 8a bf ff       	call   400df0 <fopen@plt>
  808330:	48 89 05 b9 41 20 00 	mov    %rax,0x2041b9(%rip)        # a0c4f0 <infile>
  808337:	48 85 c0             	test   %rax,%rax
  80833a:	75 42                	jne    80837e <main+0xfd>
  80833c:	48 8b 0d 65 41 20 00 	mov    0x204165(%rip),%rcx        # a0c4a8 <optarg@GLIBC_2.2.5>
  808343:	48 8d 15 00 20 00 00 	lea    0x2000(%rip),%rdx        # 80a34a <_IO_stdin_used+0x1ba>
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
  80839d:	48 8d 0d e4 1f 00 00 	lea    0x1fe4(%rip),%rcx        # 80a388 <_IO_stdin_used+0x1f8>
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
  8083d4:	48 8d 35 8c 1f 00 00 	lea    0x1f8c(%rip),%rsi        # 80a367 <_IO_stdin_used+0x1d7>
  8083db:	bf 01 00 00 00       	mov    $0x1,%edi
  8083e0:	b8 00 00 00 00       	mov    $0x0,%eax
  8083e5:	e8 f6 89 bf ff       	call   400de0 <__printf_chk@plt>
  8083ea:	48 8b 3b             	mov    (%rbx),%rdi
  8083ed:	e8 f5 fc ff ff       	call   8080e7 <usage>
  8083f2:	be 01 00 00 00       	mov    $0x1,%esi
  8083f7:	44 89 ef             	mov    %r13d,%edi
  8083fa:	e8 84 fd ff ff       	call   808183 <initialize_target>
  8083ff:	83 3d 02 41 20 00 00 	cmpl   $0x0,0x204102(%rip)        # a0c508 <is_checker>
  808406:	74 09                	je     808411 <main+0x190>
  808408:	44 39 35 f1 40 20 00 	cmp    %r14d,0x2040f1(%rip)        # a0c500 <authkey>
  80840f:	75 36                	jne    808447 <main+0x1c6>
  808411:	8b 15 ed 40 20 00    	mov    0x2040ed(%rip),%edx        # a0c504 <cookie>
  808417:	48 8d 35 5c 1f 00 00 	lea    0x1f5c(%rip),%rsi        # 80a37a <_IO_stdin_used+0x1ea>
  80841e:	bf 01 00 00 00       	mov    $0x1,%edi
  808423:	b8 00 00 00 00       	mov    $0x0,%eax
  808428:	e8 b3 89 bf ff       	call   400de0 <__printf_chk@plt>
  80842d:	48 8b 3d 5c 40 20 00 	mov    0x20405c(%rip),%rdi        # a0c490 <buf_offset>
  808434:	e8 ec 0d 00 00       	call   809225 <launch>
  808439:	b8 00 00 00 00       	mov    $0x0,%eax
  80843e:	5b                   	pop    %rbx
  80843f:	5d                   	pop    %rbp
  808440:	41 5c                	pop    %r12
  808442:	41 5d                	pop    %r13
  808444:	41 5e                	pop    %r14
  808446:	c3                   	ret
  808447:	44 89 f2             	mov    %r14d,%edx
  80844a:	48 8d 35 4f 1e 00 00 	lea    0x1e4f(%rip),%rsi        # 80a2a0 <_IO_stdin_used+0x110>
  808451:	bf 01 00 00 00       	mov    $0x1,%edi
  808456:	b8 00 00 00 00       	mov    $0x0,%eax
  80845b:	e8 80 89 bf ff       	call   400de0 <__printf_chk@plt>
  808460:	b8 00 00 00 00       	mov    $0x0,%eax
  808465:	e8 c1 08 00 00       	call   808d2b <check_fail>
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
  8089a9:	e8 b5 03 00 00       	call   808d63 <Gets>
  8089ae:	b8 01 00 00 00       	mov    $0x1,%eax
  8089b3:	48 83 c4 18          	add    $0x18,%rsp
  8089b7:	c3                   	ret

00000000008089b8 <touch1>:
  8089b8:	48 83 ec 08          	sub    $0x8,%rsp
  8089bc:	c7 05 36 3b 20 00 01 	movl   $0x1,0x203b36(%rip)        # a0c4fc <vlevel>
  8089c3:	00 00 00 
  8089c6:	48 8d 3d 3e 1a 00 00 	lea    0x1a3e(%rip),%rdi        # 80a40b <_IO_stdin_used+0x27b>
  8089cd:	e8 ee 82 bf ff       	call   400cc0 <puts@plt>
  8089d2:	bf 01 00 00 00       	mov    $0x1,%edi
  8089d7:	e8 fe 05 00 00       	call   808fda <validate>
  8089dc:	bf 00 00 00 00       	mov    $0x0,%edi
  8089e1:	e8 3a 84 bf ff       	call   400e20 <exit@plt>

00000000008089e6 <touch2>:
  8089e6:	48 83 ec 08          	sub    $0x8,%rsp
  8089ea:	89 fa                	mov    %edi,%edx
  8089ec:	c7 05 06 3b 20 00 02 	movl   $0x2,0x203b06(%rip)        # a0c4fc <vlevel>
  8089f3:	00 00 00 
  8089f6:	39 3d 08 3b 20 00    	cmp    %edi,0x203b08(%rip)        # a0c504 <cookie>
  8089fc:	74 2a                	je     808a28 <touch2+0x42>
  8089fe:	48 8d 35 53 1a 00 00 	lea    0x1a53(%rip),%rsi        # 80a458 <_IO_stdin_used+0x2c8>
  808a05:	bf 01 00 00 00       	mov    $0x1,%edi
  808a0a:	b8 00 00 00 00       	mov    $0x0,%eax
  808a0f:	e8 cc 83 bf ff       	call   400de0 <__printf_chk@plt>
  808a14:	bf 02 00 00 00       	mov    $0x2,%edi
  808a19:	e8 8c 06 00 00       	call   8090aa <fail>
  808a1e:	bf 00 00 00 00       	mov    $0x0,%edi
  808a23:	e8 f8 83 bf ff       	call   400e20 <exit@plt>
  808a28:	48 8d 35 01 1a 00 00 	lea    0x1a01(%rip),%rsi        # 80a430 <_IO_stdin_used+0x2a0>
  808a2f:	bf 01 00 00 00       	mov    $0x1,%edi
  808a34:	b8 00 00 00 00       	mov    $0x0,%eax
  808a39:	e8 a2 83 bf ff       	call   400de0 <__printf_chk@plt>
  808a3e:	bf 02 00 00 00       	mov    $0x2,%edi
  808a43:	e8 92 05 00 00       	call   808fda <validate>
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
  808aa7:	48 8d 0d 7a 19 00 00 	lea    0x197a(%rip),%rcx        # 80a428 <_IO_stdin_used+0x298>
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
  808b20:	48 8d 35 59 19 00 00 	lea    0x1959(%rip),%rsi        # 80a480 <_IO_stdin_used+0x2f0>
  808b27:	bf 01 00 00 00       	mov    $0x1,%edi
  808b2c:	b8 00 00 00 00       	mov    $0x0,%eax
  808b31:	e8 aa 82 bf ff       	call   400de0 <__printf_chk@plt>
  808b36:	bf 03 00 00 00       	mov    $0x3,%edi
  808b3b:	e8 9a 04 00 00       	call   808fda <validate>
  808b40:	bf 00 00 00 00       	mov    $0x0,%edi
  808b45:	e8 d6 82 bf ff       	call   400e20 <exit@plt>
  808b4a:	48 89 da             	mov    %rbx,%rdx
  808b4d:	48 8d 35 54 19 00 00 	lea    0x1954(%rip),%rsi        # 80a4a8 <_IO_stdin_used+0x318>
  808b54:	bf 01 00 00 00       	mov    $0x1,%edi
  808b59:	b8 00 00 00 00       	mov    $0x0,%eax
  808b5e:	e8 7d 82 bf ff       	call   400de0 <__printf_chk@plt>
  808b63:	bf 03 00 00 00       	mov    $0x3,%edi
  808b68:	e8 3d 05 00 00       	call   8090aa <fail>
  808b6d:	eb d1                	jmp    808b40 <touch3+0x43>

0000000000808b6f <test>:
  808b6f:	48 83 ec 08          	sub    $0x8,%rsp
  808b73:	b8 00 00 00 00       	mov    $0x0,%eax
  808b78:	e8 25 fe ff ff       	call   8089a2 <getbuf>
  808b7d:	89 c2                	mov    %eax,%edx
  808b7f:	48 8d 35 4a 19 00 00 	lea    0x194a(%rip),%rsi        # 80a4d0 <_IO_stdin_used+0x340>
  808b86:	bf 01 00 00 00       	mov    $0x1,%edi
  808b8b:	b8 00 00 00 00       	mov    $0x0,%eax
  808b90:	e8 4b 82 bf ff       	call   400de0 <__printf_chk@plt>
  808b95:	48 83 c4 08          	add    $0x8,%rsp
  808b99:	c3                   	ret

0000000000808b9a <start_farm>:
  808b9a:	b8 01 00 00 00       	mov    $0x1,%eax
  808b9f:	c3                   	ret

0000000000808ba0 <getval_396>:
  808ba0:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  808ba5:	c3                   	ret

0000000000808ba6 <setval_352>:
  808ba6:	c7 07 e6 58 90 c3    	movl   $0xc39058e6,(%rdi)
  808bac:	c3                   	ret

0000000000808bad <setval_186>:
  808bad:	c7 07 58 94 90 90    	movl   $0x90909458,(%rdi)
  808bb3:	c3                   	ret

0000000000808bb4 <getval_165>:
  808bb4:	b8 08 89 c7 90       	mov    $0x90c78908,%eax
  808bb9:	c3                   	ret

0000000000808bba <getval_322>:
  808bba:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  808bbf:	c3                   	ret

0000000000808bc0 <getval_133>:
  808bc0:	b8 4a 44 18 90       	mov    $0x9018444a,%eax
  808bc5:	c3                   	ret

0000000000808bc6 <addval_421>:
  808bc6:	8d 87 48 89 c7 91    	lea    -0x6e3876b8(%rdi),%eax
  808bcc:	c3                   	ret

0000000000808bcd <setval_262>:
  808bcd:	c7 07 dc 48 89 c7    	movl   $0xc78948dc,(%rdi)
  808bd3:	c3                   	ret

0000000000808bd4 <mid_farm>:
  808bd4:	b8 01 00 00 00       	mov    $0x1,%eax
  808bd9:	c3                   	ret

0000000000808bda <add_xy>:
  808bda:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  808bde:	c3                   	ret

0000000000808bdf <setval_206>:
  808bdf:	c7 07 89 ce 30 d2    	movl   $0xd230ce89,(%rdi)
  808be5:	c3                   	ret

0000000000808be6 <addval_428>:
  808be6:	8d 87 99 d1 90 c3    	lea    -0x3c6f2e67(%rdi),%eax
  808bec:	c3                   	ret

0000000000808bed <addval_240>:
  808bed:	8d 87 89 c2 00 c0    	lea    -0x3fff3d77(%rdi),%eax
  808bf3:	c3                   	ret

0000000000808bf4 <getval_114>:
  808bf4:	b8 c9 ce 90 90       	mov    $0x9090cec9,%eax
  808bf9:	c3                   	ret

0000000000808bfa <setval_141>:
  808bfa:	c7 07 89 c2 18 c0    	movl   $0xc018c289,(%rdi)
  808c00:	c3                   	ret

0000000000808c01 <setval_388>:
  808c01:	c7 07 89 d1 38 d2    	movl   $0xd238d189,(%rdi)
  808c07:	c3                   	ret

0000000000808c08 <getval_260>:
  808c08:	b8 89 ce 18 c0       	mov    $0xc018ce89,%eax
  808c0d:	c3                   	ret

0000000000808c0e <getval_370>:
  808c0e:	b8 7d 4a 81 c2       	mov    $0xc2814a7d,%eax
  808c13:	c3                   	ret

0000000000808c14 <addval_128>:
  808c14:	8d 87 58 89 e0 c3    	lea    -0x3c1f76a8(%rdi),%eax
  808c1a:	c3                   	ret

0000000000808c1b <setval_271>:
  808c1b:	c7 07 5e 48 89 e0    	movl   $0xe089485e,(%rdi)
  808c21:	c3                   	ret

0000000000808c22 <setval_313>:
  808c22:	c7 07 89 c2 c3 dd    	movl   $0xddc3c289,(%rdi)
  808c28:	c3                   	ret

0000000000808c29 <getval_415>:
  808c29:	b8 99 c2 38 db       	mov    $0xdb38c299,%eax
  808c2e:	c3                   	ret

0000000000808c2f <setval_394>:
  808c2f:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  808c35:	c3                   	ret

0000000000808c36 <setval_375>:
  808c36:	c7 07 a9 c2 20 d2    	movl   $0xd220c2a9,(%rdi)
  808c3c:	c3                   	ret

0000000000808c3d <setval_371>:
  808c3d:	c7 07 99 d1 84 db    	movl   $0xdb84d199,(%rdi)
  808c43:	c3                   	ret

0000000000808c44 <getval_113>:
  808c44:	b8 63 48 89 e0       	mov    $0xe0894863,%eax
  808c49:	c3                   	ret

0000000000808c4a <setval_363>:
  808c4a:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  808c50:	c3                   	ret

0000000000808c51 <getval_211>:
  808c51:	b8 89 d1 20 d2       	mov    $0xd220d189,%eax
  808c56:	c3                   	ret

0000000000808c57 <setval_104>:
  808c57:	c7 07 e1 09 d1 90    	movl   $0x90d109e1,(%rdi)
  808c5d:	c3                   	ret

0000000000808c5e <getval_202>:
  808c5e:	b8 97 99 ce 90       	mov    $0x90ce9997,%eax
  808c63:	c3                   	ret

0000000000808c64 <setval_460>:
  808c64:	c7 07 a0 89 c2 c3    	movl   $0xc3c289a0,(%rdi)
  808c6a:	c3                   	ret

0000000000808c6b <setval_235>:
  808c6b:	c7 07 48 89 e0 91    	movl   $0x91e08948,(%rdi)
  808c71:	c3                   	ret

0000000000808c72 <addval_474>:
  808c72:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  808c78:	c3                   	ret

0000000000808c79 <getval_431>:
  808c79:	b8 81 ce 90 c3       	mov    $0xc390ce81,%eax
  808c7e:	c3                   	ret

0000000000808c7f <addval_480>:
  808c7f:	8d 87 89 d1 90 c2    	lea    -0x3d6f2e77(%rdi),%eax
  808c85:	c3                   	ret

0000000000808c86 <setval_245>:
  808c86:	c7 07 89 ce 20 d2    	movl   $0xd220ce89,(%rdi)
  808c8c:	c3                   	ret

0000000000808c8d <addval_337>:
  808c8d:	8d 87 4c 89 e0 c3    	lea    -0x3c1f76b4(%rdi),%eax
  808c93:	c3                   	ret

0000000000808c94 <getval_295>:
  808c94:	b8 5a 80 99 d1       	mov    $0xd199805a,%eax
  808c99:	c3                   	ret

0000000000808c9a <addval_427>:
  808c9a:	8d 87 a9 ce 38 c9    	lea    -0x36c73157(%rdi),%eax
  808ca0:	c3                   	ret

0000000000808ca1 <getval_369>:
  808ca1:	b8 c9 c2 20 c0       	mov    $0xc020c2c9,%eax
  808ca6:	c3                   	ret

0000000000808ca7 <addval_452>:
  808ca7:	8d 87 89 ce 84 d2    	lea    -0x2d7b3177(%rdi),%eax
  808cad:	c3                   	ret

0000000000808cae <setval_475>:
  808cae:	c7 07 89 d1 78 db    	movl   $0xdb78d189,(%rdi)
  808cb4:	c3                   	ret

0000000000808cb5 <end_farm>:
  808cb5:	b8 01 00 00 00       	mov    $0x1,%eax
  808cba:	c3                   	ret

0000000000808cbb <save_char>:
  808cbb:	8b 05 63 44 20 00    	mov    0x204463(%rip),%eax        # a0d124 <gets_cnt>
  808cc1:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  808cc6:	7f 4a                	jg     808d12 <save_char+0x57>
  808cc8:	89 f9                	mov    %edi,%ecx
  808cca:	c0 e9 04             	shr    $0x4,%cl
  808ccd:	8d 14 40             	lea    (%rax,%rax,2),%edx
  808cd0:	4c 8d 05 19 1b 00 00 	lea    0x1b19(%rip),%r8        # 80a7f0 <trans_char>
  808cd7:	83 e1 0f             	and    $0xf,%ecx
  808cda:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  808cdf:	48 8d 0d 3a 38 20 00 	lea    0x20383a(%rip),%rcx        # a0c520 <gets_buf>
  808ce6:	48 63 f2             	movslq %edx,%rsi
  808ce9:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  808ced:	8d 72 01             	lea    0x1(%rdx),%esi
  808cf0:	83 e7 0f             	and    $0xf,%edi
  808cf3:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  808cf8:	48 63 f6             	movslq %esi,%rsi
  808cfb:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  808cff:	83 c2 02             	add    $0x2,%edx
  808d02:	48 63 d2             	movslq %edx,%rdx
  808d05:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  808d09:	83 c0 01             	add    $0x1,%eax
  808d0c:	89 05 12 44 20 00    	mov    %eax,0x204412(%rip)        # a0d124 <gets_cnt>
  808d12:	f3 c3                	repz ret

0000000000808d14 <save_term>:
  808d14:	8b 05 0a 44 20 00    	mov    0x20440a(%rip),%eax        # a0d124 <gets_cnt>
  808d1a:	8d 04 40             	lea    (%rax,%rax,2),%eax
  808d1d:	48 98                	cltq
  808d1f:	48 8d 15 fa 37 20 00 	lea    0x2037fa(%rip),%rdx        # a0c520 <gets_buf>
  808d26:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  808d2a:	c3                   	ret

0000000000808d2b <check_fail>:
  808d2b:	48 83 ec 08          	sub    $0x8,%rsp
  808d2f:	0f be 15 fa 43 20 00 	movsbl 0x2043fa(%rip),%edx        # a0d130 <target_prefix>
  808d36:	4c 8d 05 e3 37 20 00 	lea    0x2037e3(%rip),%r8        # a0c520 <gets_buf>
  808d3d:	8b 0d b5 37 20 00    	mov    0x2037b5(%rip),%ecx        # a0c4f8 <check_level>
  808d43:	48 8d 35 a9 17 00 00 	lea    0x17a9(%rip),%rsi        # 80a4f3 <_IO_stdin_used+0x363>
  808d4a:	bf 01 00 00 00       	mov    $0x1,%edi
  808d4f:	b8 00 00 00 00       	mov    $0x0,%eax
  808d54:	e8 87 80 bf ff       	call   400de0 <__printf_chk@plt>
  808d59:	bf 01 00 00 00       	mov    $0x1,%edi
  808d5e:	e8 bd 80 bf ff       	call   400e20 <exit@plt>

0000000000808d63 <Gets>:
  808d63:	41 54                	push   %r12
  808d65:	55                   	push   %rbp
  808d66:	53                   	push   %rbx
  808d67:	49 89 fc             	mov    %rdi,%r12
  808d6a:	c7 05 b0 43 20 00 00 	movl   $0x0,0x2043b0(%rip)        # a0d124 <gets_cnt>
  808d71:	00 00 00 
  808d74:	48 89 fb             	mov    %rdi,%rbx
  808d77:	eb 11                	jmp    808d8a <Gets+0x27>
  808d79:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  808d7d:	88 03                	mov    %al,(%rbx)
  808d7f:	0f b6 f8             	movzbl %al,%edi
  808d82:	e8 34 ff ff ff       	call   808cbb <save_char>
  808d87:	48 89 eb             	mov    %rbp,%rbx
  808d8a:	48 8b 3d 5f 37 20 00 	mov    0x20375f(%rip),%rdi        # a0c4f0 <infile>
  808d91:	e8 1a 80 bf ff       	call   400db0 <_IO_getc@plt>
  808d96:	83 f8 ff             	cmp    $0xffffffff,%eax
  808d99:	74 05                	je     808da0 <Gets+0x3d>
  808d9b:	83 f8 0a             	cmp    $0xa,%eax
  808d9e:	75 d9                	jne    808d79 <Gets+0x16>
  808da0:	c6 03 00             	movb   $0x0,(%rbx)
  808da3:	b8 00 00 00 00       	mov    $0x0,%eax
  808da8:	e8 67 ff ff ff       	call   808d14 <save_term>
  808dad:	4c 89 e0             	mov    %r12,%rax
  808db0:	5b                   	pop    %rbx
  808db1:	5d                   	pop    %rbp
  808db2:	41 5c                	pop    %r12
  808db4:	c3                   	ret

0000000000808db5 <notify_server>:
  808db5:	55                   	push   %rbp
  808db6:	53                   	push   %rbx
  808db7:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  808dbe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  808dc5:	00 00 
  808dc7:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  808dce:	00 
  808dcf:	31 c0                	xor    %eax,%eax
  808dd1:	83 3d 30 37 20 00 00 	cmpl   $0x0,0x203730(%rip)        # a0c508 <is_checker>
  808dd8:	0f 85 d9 00 00 00    	jne    808eb7 <notify_server+0x102>
  808dde:	89 fb                	mov    %edi,%ebx
  808de0:	8b 05 3e 43 20 00    	mov    0x20433e(%rip),%eax        # a0d124 <gets_cnt>
  808de6:	83 c0 64             	add    $0x64,%eax
  808de9:	3d 00 20 00 00       	cmp    $0x2000,%eax
  808dee:	0f 8f e4 00 00 00    	jg     808ed8 <notify_server+0x123>
  808df4:	0f be 05 35 43 20 00 	movsbl 0x204335(%rip),%eax        # a0d130 <target_prefix>
  808dfb:	83 3d 86 36 20 00 00 	cmpl   $0x0,0x203686(%rip)        # a0c488 <notify>
  808e02:	0f 84 f0 00 00 00    	je     808ef8 <notify_server+0x143>
  808e08:	8b 15 f2 36 20 00    	mov    0x2036f2(%rip),%edx        # a0c500 <authkey>
  808e0e:	85 db                	test   %ebx,%ebx
  808e10:	0f 84 ec 00 00 00    	je     808f02 <notify_server+0x14d>
  808e16:	48 8d 2d ec 16 00 00 	lea    0x16ec(%rip),%rbp        # 80a509 <_IO_stdin_used+0x379>
  808e1d:	48 89 e7             	mov    %rsp,%rdi
  808e20:	48 83 ec 08          	sub    $0x8,%rsp
  808e24:	48 8d 0d f5 36 20 00 	lea    0x2036f5(%rip),%rcx        # a0c520 <gets_buf>
  808e2b:	51                   	push   %rcx
  808e2c:	56                   	push   %rsi
  808e2d:	50                   	push   %rax
  808e2e:	52                   	push   %rdx
  808e2f:	55                   	push   %rbp
  808e30:	44 8b 0d f9 32 20 00 	mov    0x2032f9(%rip),%r9d        # a0c130 <target_id>
  808e37:	4c 8d 05 d5 16 00 00 	lea    0x16d5(%rip),%r8        # 80a513 <_IO_stdin_used+0x383>
  808e3e:	b9 00 20 00 00       	mov    $0x2000,%ecx
  808e43:	ba 01 00 00 00       	mov    $0x1,%edx
  808e48:	be 00 20 00 00       	mov    $0x2000,%esi
  808e4d:	b8 00 00 00 00       	mov    $0x0,%eax
  808e52:	e8 19 7e bf ff       	call   400c70 <__snprintf_chk@plt>
  808e57:	48 83 c4 30          	add    $0x30,%rsp
  808e5b:	83 3d 26 36 20 00 00 	cmpl   $0x0,0x203626(%rip)        # a0c488 <notify>
  808e62:	0f 84 df 00 00 00    	je     808f47 <notify_server+0x192>
  808e68:	85 db                	test   %ebx,%ebx
  808e6a:	0f 84 c6 00 00 00    	je     808f36 <notify_server+0x181>
  808e70:	48 89 e1             	mov    %rsp,%rcx
  808e73:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  808e7a:	00 
  808e7b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  808e81:	48 8b 15 c0 32 20 00 	mov    0x2032c0(%rip),%rdx        # a0c148 <lab>
  808e88:	48 8b 35 f1 35 20 00 	mov    0x2035f1(%rip),%rsi        # a0c480 <course>
  808e8f:	48 8b 3d aa 32 20 00 	mov    0x2032aa(%rip),%rdi        # a0c140 <user_id>
  808e96:	e8 af 11 00 00       	call   80a04a <driver_post>
  808e9b:	85 c0                	test   %eax,%eax
  808e9d:	78 6f                	js     808f0e <notify_server+0x159>
  808e9f:	48 8d 3d b2 17 00 00 	lea    0x17b2(%rip),%rdi        # 80a658 <_IO_stdin_used+0x4c8>
  808ea6:	e8 15 7e bf ff       	call   400cc0 <puts@plt>
  808eab:	48 8d 3d 89 16 00 00 	lea    0x1689(%rip),%rdi        # 80a53b <_IO_stdin_used+0x3ab>
  808eb2:	e8 09 7e bf ff       	call   400cc0 <puts@plt>
  808eb7:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  808ebe:	00 
  808ebf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  808ec6:	00 00 
  808ec8:	0f 85 07 01 00 00    	jne    808fd5 <notify_server+0x220>
  808ece:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  808ed5:	5b                   	pop    %rbx
  808ed6:	5d                   	pop    %rbp
  808ed7:	c3                   	ret
  808ed8:	48 8d 35 49 17 00 00 	lea    0x1749(%rip),%rsi        # 80a628 <_IO_stdin_used+0x498>
  808edf:	bf 01 00 00 00       	mov    $0x1,%edi
  808ee4:	b8 00 00 00 00       	mov    $0x0,%eax
  808ee9:	e8 f2 7e bf ff       	call   400de0 <__printf_chk@plt>
  808eee:	bf 01 00 00 00       	mov    $0x1,%edi
  808ef3:	e8 28 7f bf ff       	call   400e20 <exit@plt>
  808ef8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  808efd:	e9 0c ff ff ff       	jmp    808e0e <notify_server+0x59>
  808f02:	48 8d 2d 05 16 00 00 	lea    0x1605(%rip),%rbp        # 80a50e <_IO_stdin_used+0x37e>
  808f09:	e9 0f ff ff ff       	jmp    808e1d <notify_server+0x68>
  808f0e:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  808f15:	00 
  808f16:	48 8d 35 12 16 00 00 	lea    0x1612(%rip),%rsi        # 80a52f <_IO_stdin_used+0x39f>
  808f1d:	bf 01 00 00 00       	mov    $0x1,%edi
  808f22:	b8 00 00 00 00       	mov    $0x0,%eax
  808f27:	e8 b4 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f2c:	bf 01 00 00 00       	mov    $0x1,%edi
  808f31:	e8 ea 7e bf ff       	call   400e20 <exit@plt>
  808f36:	48 8d 3d 08 16 00 00 	lea    0x1608(%rip),%rdi        # 80a545 <_IO_stdin_used+0x3b5>
  808f3d:	e8 7e 7d bf ff       	call   400cc0 <puts@plt>
  808f42:	e9 70 ff ff ff       	jmp    808eb7 <notify_server+0x102>
  808f47:	48 89 ea             	mov    %rbp,%rdx
  808f4a:	48 8d 35 3f 17 00 00 	lea    0x173f(%rip),%rsi        # 80a690 <_IO_stdin_used+0x500>
  808f51:	bf 01 00 00 00       	mov    $0x1,%edi
  808f56:	b8 00 00 00 00       	mov    $0x0,%eax
  808f5b:	e8 80 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f60:	48 8b 15 d9 31 20 00 	mov    0x2031d9(%rip),%rdx        # a0c140 <user_id>
  808f67:	48 8d 35 de 15 00 00 	lea    0x15de(%rip),%rsi        # 80a54c <_IO_stdin_used+0x3bc>
  808f6e:	bf 01 00 00 00       	mov    $0x1,%edi
  808f73:	b8 00 00 00 00       	mov    $0x0,%eax
  808f78:	e8 63 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f7d:	48 8b 15 fc 34 20 00 	mov    0x2034fc(%rip),%rdx        # a0c480 <course>
  808f84:	48 8d 35 ce 15 00 00 	lea    0x15ce(%rip),%rsi        # 80a559 <_IO_stdin_used+0x3c9>
  808f8b:	bf 01 00 00 00       	mov    $0x1,%edi
  808f90:	b8 00 00 00 00       	mov    $0x0,%eax
  808f95:	e8 46 7e bf ff       	call   400de0 <__printf_chk@plt>
  808f9a:	48 8b 15 a7 31 20 00 	mov    0x2031a7(%rip),%rdx        # a0c148 <lab>
  808fa1:	48 8d 35 bd 15 00 00 	lea    0x15bd(%rip),%rsi        # 80a565 <_IO_stdin_used+0x3d5>
  808fa8:	bf 01 00 00 00       	mov    $0x1,%edi
  808fad:	b8 00 00 00 00       	mov    $0x0,%eax
  808fb2:	e8 29 7e bf ff       	call   400de0 <__printf_chk@plt>
  808fb7:	48 89 e2             	mov    %rsp,%rdx
  808fba:	48 8d 35 ad 15 00 00 	lea    0x15ad(%rip),%rsi        # 80a56e <_IO_stdin_used+0x3de>
  808fc1:	bf 01 00 00 00       	mov    $0x1,%edi
  808fc6:	b8 00 00 00 00       	mov    $0x0,%eax
  808fcb:	e8 10 7e bf ff       	call   400de0 <__printf_chk@plt>
  808fd0:	e9 e2 fe ff ff       	jmp    808eb7 <notify_server+0x102>
  808fd5:	e8 06 7d bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000808fda <validate>:
  808fda:	53                   	push   %rbx
  808fdb:	89 fb                	mov    %edi,%ebx
  808fdd:	83 3d 24 35 20 00 00 	cmpl   $0x0,0x203524(%rip)        # a0c508 <is_checker>
  808fe4:	74 72                	je     809058 <validate+0x7e>
  808fe6:	39 3d 10 35 20 00    	cmp    %edi,0x203510(%rip)        # a0c4fc <vlevel>
  808fec:	75 32                	jne    809020 <validate+0x46>
  808fee:	8b 15 04 35 20 00    	mov    0x203504(%rip),%edx        # a0c4f8 <check_level>
  808ff4:	39 fa                	cmp    %edi,%edx
  808ff6:	75 3e                	jne    809036 <validate+0x5c>
  808ff8:	0f be 15 31 41 20 00 	movsbl 0x204131(%rip),%edx        # a0d130 <target_prefix>
  808fff:	4c 8d 05 1a 35 20 00 	lea    0x20351a(%rip),%r8        # a0c520 <gets_buf>
  809006:	89 f9                	mov    %edi,%ecx
  809008:	48 8d 35 89 15 00 00 	lea    0x1589(%rip),%rsi        # 80a598 <_IO_stdin_used+0x408>
  80900f:	bf 01 00 00 00       	mov    $0x1,%edi
  809014:	b8 00 00 00 00       	mov    $0x0,%eax
  809019:	e8 c2 7d bf ff       	call   400de0 <__printf_chk@plt>
  80901e:	5b                   	pop    %rbx
  80901f:	c3                   	ret
  809020:	48 8d 3d 53 15 00 00 	lea    0x1553(%rip),%rdi        # 80a57a <_IO_stdin_used+0x3ea>
  809027:	e8 94 7c bf ff       	call   400cc0 <puts@plt>
  80902c:	b8 00 00 00 00       	mov    $0x0,%eax
  809031:	e8 f5 fc ff ff       	call   808d2b <check_fail>
  809036:	89 f9                	mov    %edi,%ecx
  809038:	48 8d 35 79 16 00 00 	lea    0x1679(%rip),%rsi        # 80a6b8 <_IO_stdin_used+0x528>
  80903f:	bf 01 00 00 00       	mov    $0x1,%edi
  809044:	b8 00 00 00 00       	mov    $0x0,%eax
  809049:	e8 92 7d bf ff       	call   400de0 <__printf_chk@plt>
  80904e:	b8 00 00 00 00       	mov    $0x0,%eax
  809053:	e8 d3 fc ff ff       	call   808d2b <check_fail>
  809058:	39 3d 9e 34 20 00    	cmp    %edi,0x20349e(%rip)        # a0c4fc <vlevel>
  80905e:	74 1a                	je     80907a <validate+0xa0>
  809060:	48 8d 3d 13 15 00 00 	lea    0x1513(%rip),%rdi        # 80a57a <_IO_stdin_used+0x3ea>
  809067:	e8 54 7c bf ff       	call   400cc0 <puts@plt>
  80906c:	89 de                	mov    %ebx,%esi
  80906e:	bf 00 00 00 00       	mov    $0x0,%edi
  809073:	e8 3d fd ff ff       	call   808db5 <notify_server>
  809078:	eb a4                	jmp    80901e <validate+0x44>
  80907a:	0f be 0d af 40 20 00 	movsbl 0x2040af(%rip),%ecx        # a0d130 <target_prefix>
  809081:	89 fa                	mov    %edi,%edx
  809083:	48 8d 35 56 16 00 00 	lea    0x1656(%rip),%rsi        # 80a6e0 <_IO_stdin_used+0x550>
  80908a:	bf 01 00 00 00       	mov    $0x1,%edi
  80908f:	b8 00 00 00 00       	mov    $0x0,%eax
  809094:	e8 47 7d bf ff       	call   400de0 <__printf_chk@plt>
  809099:	89 de                	mov    %ebx,%esi
  80909b:	bf 01 00 00 00       	mov    $0x1,%edi
  8090a0:	e8 10 fd ff ff       	call   808db5 <notify_server>
  8090a5:	e9 74 ff ff ff       	jmp    80901e <validate+0x44>

00000000008090aa <fail>:
  8090aa:	48 83 ec 08          	sub    $0x8,%rsp
  8090ae:	83 3d 53 34 20 00 00 	cmpl   $0x0,0x203453(%rip)        # a0c508 <is_checker>
  8090b5:	75 11                	jne    8090c8 <fail+0x1e>
  8090b7:	89 fe                	mov    %edi,%esi
  8090b9:	bf 00 00 00 00       	mov    $0x0,%edi
  8090be:	e8 f2 fc ff ff       	call   808db5 <notify_server>
  8090c3:	48 83 c4 08          	add    $0x8,%rsp
  8090c7:	c3                   	ret
  8090c8:	b8 00 00 00 00       	mov    $0x0,%eax
  8090cd:	e8 59 fc ff ff       	call   808d2b <check_fail>

00000000008090d2 <bushandler>:
  8090d2:	48 83 ec 08          	sub    $0x8,%rsp
  8090d6:	83 3d 2b 34 20 00 00 	cmpl   $0x0,0x20342b(%rip)        # a0c508 <is_checker>
  8090dd:	74 16                	je     8090f5 <bushandler+0x23>
  8090df:	48 8d 3d c7 14 00 00 	lea    0x14c7(%rip),%rdi        # 80a5ad <_IO_stdin_used+0x41d>
  8090e6:	e8 d5 7b bf ff       	call   400cc0 <puts@plt>
  8090eb:	b8 00 00 00 00       	mov    $0x0,%eax
  8090f0:	e8 36 fc ff ff       	call   808d2b <check_fail>
  8090f5:	48 8d 3d 1c 16 00 00 	lea    0x161c(%rip),%rdi        # 80a718 <_IO_stdin_used+0x588>
  8090fc:	e8 bf 7b bf ff       	call   400cc0 <puts@plt>
  809101:	48 8d 3d af 14 00 00 	lea    0x14af(%rip),%rdi        # 80a5b7 <_IO_stdin_used+0x427>
  809108:	e8 b3 7b bf ff       	call   400cc0 <puts@plt>
  80910d:	be 00 00 00 00       	mov    $0x0,%esi
  809112:	bf 00 00 00 00       	mov    $0x0,%edi
  809117:	e8 99 fc ff ff       	call   808db5 <notify_server>
  80911c:	bf 01 00 00 00       	mov    $0x1,%edi
  809121:	e8 fa 7c bf ff       	call   400e20 <exit@plt>

0000000000809126 <seghandler>:
  809126:	48 83 ec 08          	sub    $0x8,%rsp
  80912a:	83 3d d7 33 20 00 00 	cmpl   $0x0,0x2033d7(%rip)        # a0c508 <is_checker>
  809131:	74 16                	je     809149 <seghandler+0x23>
  809133:	48 8d 3d 93 14 00 00 	lea    0x1493(%rip),%rdi        # 80a5cd <_IO_stdin_used+0x43d>
  80913a:	e8 81 7b bf ff       	call   400cc0 <puts@plt>
  80913f:	b8 00 00 00 00       	mov    $0x0,%eax
  809144:	e8 e2 fb ff ff       	call   808d2b <check_fail>
  809149:	48 8d 3d e8 15 00 00 	lea    0x15e8(%rip),%rdi        # 80a738 <_IO_stdin_used+0x5a8>
  809150:	e8 6b 7b bf ff       	call   400cc0 <puts@plt>
  809155:	48 8d 3d 5b 14 00 00 	lea    0x145b(%rip),%rdi        # 80a5b7 <_IO_stdin_used+0x427>
  80915c:	e8 5f 7b bf ff       	call   400cc0 <puts@plt>
  809161:	be 00 00 00 00       	mov    $0x0,%esi
  809166:	bf 00 00 00 00       	mov    $0x0,%edi
  80916b:	e8 45 fc ff ff       	call   808db5 <notify_server>
  809170:	bf 01 00 00 00       	mov    $0x1,%edi
  809175:	e8 a6 7c bf ff       	call   400e20 <exit@plt>

000000000080917a <illegalhandler>:
  80917a:	48 83 ec 08          	sub    $0x8,%rsp
  80917e:	83 3d 83 33 20 00 00 	cmpl   $0x0,0x203383(%rip)        # a0c508 <is_checker>
  809185:	74 16                	je     80919d <illegalhandler+0x23>
  809187:	48 8d 3d 52 14 00 00 	lea    0x1452(%rip),%rdi        # 80a5e0 <_IO_stdin_used+0x450>
  80918e:	e8 2d 7b bf ff       	call   400cc0 <puts@plt>
  809193:	b8 00 00 00 00       	mov    $0x0,%eax
  809198:	e8 8e fb ff ff       	call   808d2b <check_fail>
  80919d:	48 8d 3d bc 15 00 00 	lea    0x15bc(%rip),%rdi        # 80a760 <_IO_stdin_used+0x5d0>
  8091a4:	e8 17 7b bf ff       	call   400cc0 <puts@plt>
  8091a9:	48 8d 3d 07 14 00 00 	lea    0x1407(%rip),%rdi        # 80a5b7 <_IO_stdin_used+0x427>
  8091b0:	e8 0b 7b bf ff       	call   400cc0 <puts@plt>
  8091b5:	be 00 00 00 00       	mov    $0x0,%esi
  8091ba:	bf 00 00 00 00       	mov    $0x0,%edi
  8091bf:	e8 f1 fb ff ff       	call   808db5 <notify_server>
  8091c4:	bf 01 00 00 00       	mov    $0x1,%edi
  8091c9:	e8 52 7c bf ff       	call   400e20 <exit@plt>

00000000008091ce <sigalrmhandler>:
  8091ce:	48 83 ec 08          	sub    $0x8,%rsp
  8091d2:	83 3d 2f 33 20 00 00 	cmpl   $0x0,0x20332f(%rip)        # a0c508 <is_checker>
  8091d9:	74 16                	je     8091f1 <sigalrmhandler+0x23>
  8091db:	48 8d 3d 12 14 00 00 	lea    0x1412(%rip),%rdi        # 80a5f4 <_IO_stdin_used+0x464>
  8091e2:	e8 d9 7a bf ff       	call   400cc0 <puts@plt>
  8091e7:	b8 00 00 00 00       	mov    $0x0,%eax
  8091ec:	e8 3a fb ff ff       	call   808d2b <check_fail>
  8091f1:	ba 05 00 00 00       	mov    $0x5,%edx
  8091f6:	48 8d 35 93 15 00 00 	lea    0x1593(%rip),%rsi        # 80a790 <_IO_stdin_used+0x600>
  8091fd:	bf 01 00 00 00       	mov    $0x1,%edi
  809202:	b8 00 00 00 00       	mov    $0x0,%eax
  809207:	e8 d4 7b bf ff       	call   400de0 <__printf_chk@plt>
  80920c:	be 00 00 00 00       	mov    $0x0,%esi
  809211:	bf 00 00 00 00       	mov    $0x0,%edi
  809216:	e8 9a fb ff ff       	call   808db5 <notify_server>
  80921b:	bf 01 00 00 00       	mov    $0x1,%edi
  809220:	e8 fb 7b bf ff       	call   400e20 <exit@plt>

0000000000809225 <launch>:
  809225:	55                   	push   %rbp
  809226:	48 89 e5             	mov    %rsp,%rbp
  809229:	48 83 ec 10          	sub    $0x10,%rsp
  80922d:	48 89 fa             	mov    %rdi,%rdx
  809230:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809237:	00 00 
  809239:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  80923d:	31 c0                	xor    %eax,%eax
  80923f:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  809243:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  809247:	48 29 c4             	sub    %rax,%rsp
  80924a:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  80924f:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  809253:	be f4 00 00 00       	mov    $0xf4,%esi
  809258:	e8 a3 7a bf ff       	call   400d00 <memset@plt>
  80925d:	48 8b 05 3c 32 20 00 	mov    0x20323c(%rip),%rax        # a0c4a0 <stdin@GLIBC_2.2.5>
  809264:	48 39 05 85 32 20 00 	cmp    %rax,0x203285(%rip)        # a0c4f0 <infile>
  80926b:	74 3a                	je     8092a7 <launch+0x82>
  80926d:	c7 05 85 32 20 00 00 	movl   $0x0,0x203285(%rip)        # a0c4fc <vlevel>
  809274:	00 00 00 
  809277:	b8 00 00 00 00       	mov    $0x0,%eax
  80927c:	e8 ee f8 ff ff       	call   808b6f <test>
  809281:	83 3d 80 32 20 00 00 	cmpl   $0x0,0x203280(%rip)        # a0c508 <is_checker>
  809288:	75 35                	jne    8092bf <launch+0x9a>
  80928a:	48 8d 3d 83 13 00 00 	lea    0x1383(%rip),%rdi        # 80a614 <_IO_stdin_used+0x484>
  809291:	e8 2a 7a bf ff       	call   400cc0 <puts@plt>
  809296:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  80929a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  8092a1:	00 00 
  8092a3:	75 30                	jne    8092d5 <launch+0xb0>
  8092a5:	c9                   	leave
  8092a6:	c3                   	ret
  8092a7:	48 8d 35 4e 13 00 00 	lea    0x134e(%rip),%rsi        # 80a5fc <_IO_stdin_used+0x46c>
  8092ae:	bf 01 00 00 00       	mov    $0x1,%edi
  8092b3:	b8 00 00 00 00       	mov    $0x0,%eax
  8092b8:	e8 23 7b bf ff       	call   400de0 <__printf_chk@plt>
  8092bd:	eb ae                	jmp    80926d <launch+0x48>
  8092bf:	48 8d 3d 43 13 00 00 	lea    0x1343(%rip),%rdi        # 80a609 <_IO_stdin_used+0x479>
  8092c6:	e8 f5 79 bf ff       	call   400cc0 <puts@plt>
  8092cb:	b8 00 00 00 00       	mov    $0x0,%eax
  8092d0:	e8 56 fa ff ff       	call   808d2b <check_fail>
  8092d5:	e8 06 7a bf ff       	call   400ce0 <__stack_chk_fail@plt>

00000000008092da <stable_launch>:
  8092da:	53                   	push   %rbx
  8092db:	48 89 3d 06 32 20 00 	mov    %rdi,0x203206(%rip)        # a0c4e8 <global_offset>
  8092e2:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  8092e8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  8092ee:	b9 32 01 00 00       	mov    $0x132,%ecx
  8092f3:	ba 07 00 00 00       	mov    $0x7,%edx
  8092f8:	be 00 00 10 00       	mov    $0x100000,%esi
  8092fd:	bf 00 60 58 55       	mov    $0x55586000,%edi
  809302:	e8 e9 79 bf ff       	call   400cf0 <mmap@plt>
  809307:	48 89 c3             	mov    %rax,%rbx
  80930a:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  809310:	75 43                	jne    809355 <stable_launch+0x7b>
  809312:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  809319:	48 89 15 08 3e 20 00 	mov    %rdx,0x203e08(%rip)        # a0d128 <stack_top>
  809320:	48 89 e0             	mov    %rsp,%rax
  809323:	48 89 d4             	mov    %rdx,%rsp
  809326:	48 89 c2             	mov    %rax,%rdx
  809329:	48 89 15 b0 31 20 00 	mov    %rdx,0x2031b0(%rip)        # a0c4e0 <global_save_stack>
  809330:	48 8b 3d b1 31 20 00 	mov    0x2031b1(%rip),%rdi        # a0c4e8 <global_offset>
  809337:	e8 e9 fe ff ff       	call   809225 <launch>
  80933c:	48 8b 05 9d 31 20 00 	mov    0x20319d(%rip),%rax        # a0c4e0 <global_save_stack>
  809343:	48 89 c4             	mov    %rax,%rsp
  809346:	be 00 00 10 00       	mov    $0x100000,%esi
  80934b:	48 89 df             	mov    %rbx,%rdi
  80934e:	e8 7d 7a bf ff       	call   400dd0 <munmap@plt>
  809353:	5b                   	pop    %rbx
  809354:	c3                   	ret
  809355:	be 00 00 10 00       	mov    $0x100000,%esi
  80935a:	48 89 c7             	mov    %rax,%rdi
  80935d:	e8 6e 7a bf ff       	call   400dd0 <munmap@plt>
  809362:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  809367:	48 8d 15 5a 14 00 00 	lea    0x145a(%rip),%rdx        # 80a7c8 <_IO_stdin_used+0x638>
  80936e:	be 01 00 00 00       	mov    $0x1,%esi
  809373:	48 8b 3d 46 31 20 00 	mov    0x203146(%rip),%rdi        # a0c4c0 <stderr@GLIBC_2.2.5>
  80937a:	b8 00 00 00 00       	mov    $0x0,%eax
  80937f:	e8 bc 7a bf ff       	call   400e40 <__fprintf_chk@plt>
  809384:	bf 01 00 00 00       	mov    $0x1,%edi
  809389:	e8 92 7a bf ff       	call   400e20 <exit@plt>

000000000080938e <rio_readinitb>:
  80938e:	89 37                	mov    %esi,(%rdi)
  809390:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  809397:	48 8d 47 10          	lea    0x10(%rdi),%rax
  80939b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  80939f:	c3                   	ret

00000000008093a0 <sigalrm_handler>:
  8093a0:	48 83 ec 08          	sub    $0x8,%rsp
  8093a4:	b9 00 00 00 00       	mov    $0x0,%ecx
  8093a9:	48 8d 15 50 14 00 00 	lea    0x1450(%rip),%rdx        # 80a800 <trans_char+0x10>
  8093b0:	be 01 00 00 00       	mov    $0x1,%esi
  8093b5:	48 8b 3d 04 31 20 00 	mov    0x203104(%rip),%rdi        # a0c4c0 <stderr@GLIBC_2.2.5>
  8093bc:	b8 00 00 00 00       	mov    $0x0,%eax
  8093c1:	e8 7a 7a bf ff       	call   400e40 <__fprintf_chk@plt>
  8093c6:	bf 01 00 00 00       	mov    $0x1,%edi
  8093cb:	e8 50 7a bf ff       	call   400e20 <exit@plt>

00000000008093d0 <rio_writen>:
  8093d0:	41 55                	push   %r13
  8093d2:	41 54                	push   %r12
  8093d4:	55                   	push   %rbp
  8093d5:	53                   	push   %rbx
  8093d6:	48 83 ec 08          	sub    $0x8,%rsp
  8093da:	41 89 fc             	mov    %edi,%r12d
  8093dd:	48 89 f5             	mov    %rsi,%rbp
  8093e0:	49 89 d5             	mov    %rdx,%r13
  8093e3:	48 89 d3             	mov    %rdx,%rbx
  8093e6:	eb 06                	jmp    8093ee <rio_writen+0x1e>
  8093e8:	48 29 c3             	sub    %rax,%rbx
  8093eb:	48 01 c5             	add    %rax,%rbp
  8093ee:	48 85 db             	test   %rbx,%rbx
  8093f1:	74 24                	je     809417 <rio_writen+0x47>
  8093f3:	48 89 da             	mov    %rbx,%rdx
  8093f6:	48 89 ee             	mov    %rbp,%rsi
  8093f9:	44 89 e7             	mov    %r12d,%edi
  8093fc:	e8 cf 78 bf ff       	call   400cd0 <write@plt>
  809401:	48 85 c0             	test   %rax,%rax
  809404:	7f e2                	jg     8093e8 <rio_writen+0x18>
  809406:	e8 75 78 bf ff       	call   400c80 <__errno_location@plt>
  80940b:	83 38 04             	cmpl   $0x4,(%rax)
  80940e:	75 15                	jne    809425 <rio_writen+0x55>
  809410:	b8 00 00 00 00       	mov    $0x0,%eax
  809415:	eb d1                	jmp    8093e8 <rio_writen+0x18>
  809417:	4c 89 e8             	mov    %r13,%rax
  80941a:	48 83 c4 08          	add    $0x8,%rsp
  80941e:	5b                   	pop    %rbx
  80941f:	5d                   	pop    %rbp
  809420:	41 5c                	pop    %r12
  809422:	41 5d                	pop    %r13
  809424:	c3                   	ret
  809425:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  80942c:	eb ec                	jmp    80941a <rio_writen+0x4a>

000000000080942e <rio_read>:
  80942e:	41 55                	push   %r13
  809430:	41 54                	push   %r12
  809432:	55                   	push   %rbp
  809433:	53                   	push   %rbx
  809434:	48 83 ec 08          	sub    $0x8,%rsp
  809438:	48 89 fb             	mov    %rdi,%rbx
  80943b:	49 89 f5             	mov    %rsi,%r13
  80943e:	49 89 d4             	mov    %rdx,%r12
  809441:	eb 0a                	jmp    80944d <rio_read+0x1f>
  809443:	e8 38 78 bf ff       	call   400c80 <__errno_location@plt>
  809448:	83 38 04             	cmpl   $0x4,(%rax)
  80944b:	75 5c                	jne    8094a9 <rio_read+0x7b>
  80944d:	8b 6b 04             	mov    0x4(%rbx),%ebp
  809450:	85 ed                	test   %ebp,%ebp
  809452:	7f 24                	jg     809478 <rio_read+0x4a>
  809454:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  809458:	8b 3b                	mov    (%rbx),%edi
  80945a:	ba 00 20 00 00       	mov    $0x2000,%edx
  80945f:	48 89 ee             	mov    %rbp,%rsi
  809462:	e8 c9 78 bf ff       	call   400d30 <read@plt>
  809467:	89 43 04             	mov    %eax,0x4(%rbx)
  80946a:	85 c0                	test   %eax,%eax
  80946c:	78 d5                	js     809443 <rio_read+0x15>
  80946e:	85 c0                	test   %eax,%eax
  809470:	74 40                	je     8094b2 <rio_read+0x84>
  809472:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  809476:	eb d5                	jmp    80944d <rio_read+0x1f>
  809478:	89 e8                	mov    %ebp,%eax
  80947a:	4c 39 e0             	cmp    %r12,%rax
  80947d:	72 03                	jb     809482 <rio_read+0x54>
  80947f:	44 89 e5             	mov    %r12d,%ebp
  809482:	4c 63 e5             	movslq %ebp,%r12
  809485:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  809489:	4c 89 e2             	mov    %r12,%rdx
  80948c:	4c 89 ef             	mov    %r13,%rdi
  80948f:	e8 ec 78 bf ff       	call   400d80 <memcpy@plt>
  809494:	4c 01 63 08          	add    %r12,0x8(%rbx)
  809498:	29 6b 04             	sub    %ebp,0x4(%rbx)
  80949b:	4c 89 e0             	mov    %r12,%rax
  80949e:	48 83 c4 08          	add    $0x8,%rsp
  8094a2:	5b                   	pop    %rbx
  8094a3:	5d                   	pop    %rbp
  8094a4:	41 5c                	pop    %r12
  8094a6:	41 5d                	pop    %r13
  8094a8:	c3                   	ret
  8094a9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  8094b0:	eb ec                	jmp    80949e <rio_read+0x70>
  8094b2:	b8 00 00 00 00       	mov    $0x0,%eax
  8094b7:	eb e5                	jmp    80949e <rio_read+0x70>

00000000008094b9 <rio_readlineb>:
  8094b9:	41 55                	push   %r13
  8094bb:	41 54                	push   %r12
  8094bd:	55                   	push   %rbp
  8094be:	53                   	push   %rbx
  8094bf:	48 83 ec 18          	sub    $0x18,%rsp
  8094c3:	49 89 fd             	mov    %rdi,%r13
  8094c6:	48 89 f5             	mov    %rsi,%rbp
  8094c9:	49 89 d4             	mov    %rdx,%r12
  8094cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8094d3:	00 00 
  8094d5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  8094da:	31 c0                	xor    %eax,%eax
  8094dc:	bb 01 00 00 00       	mov    $0x1,%ebx
  8094e1:	4c 39 e3             	cmp    %r12,%rbx
  8094e4:	73 47                	jae    80952d <rio_readlineb+0x74>
  8094e6:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  8094eb:	ba 01 00 00 00       	mov    $0x1,%edx
  8094f0:	4c 89 ef             	mov    %r13,%rdi
  8094f3:	e8 36 ff ff ff       	call   80942e <rio_read>
  8094f8:	83 f8 01             	cmp    $0x1,%eax
  8094fb:	75 1c                	jne    809519 <rio_readlineb+0x60>
  8094fd:	48 8d 45 01          	lea    0x1(%rbp),%rax
  809501:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  809506:	88 55 00             	mov    %dl,0x0(%rbp)
  809509:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  80950e:	74 1a                	je     80952a <rio_readlineb+0x71>
  809510:	48 83 c3 01          	add    $0x1,%rbx
  809514:	48 89 c5             	mov    %rax,%rbp
  809517:	eb c8                	jmp    8094e1 <rio_readlineb+0x28>
  809519:	85 c0                	test   %eax,%eax
  80951b:	75 32                	jne    80954f <rio_readlineb+0x96>
  80951d:	48 83 fb 01          	cmp    $0x1,%rbx
  809521:	75 0a                	jne    80952d <rio_readlineb+0x74>
  809523:	b8 00 00 00 00       	mov    $0x0,%eax
  809528:	eb 0a                	jmp    809534 <rio_readlineb+0x7b>
  80952a:	48 89 c5             	mov    %rax,%rbp
  80952d:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  809531:	48 89 d8             	mov    %rbx,%rax
  809534:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  809539:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809540:	00 00 
  809542:	75 14                	jne    809558 <rio_readlineb+0x9f>
  809544:	48 83 c4 18          	add    $0x18,%rsp
  809548:	5b                   	pop    %rbx
  809549:	5d                   	pop    %rbp
  80954a:	41 5c                	pop    %r12
  80954c:	41 5d                	pop    %r13
  80954e:	c3                   	ret
  80954f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  809556:	eb dc                	jmp    809534 <rio_readlineb+0x7b>
  809558:	e8 83 77 bf ff       	call   400ce0 <__stack_chk_fail@plt>

000000000080955d <urlencode>:
  80955d:	41 54                	push   %r12
  80955f:	55                   	push   %rbp
  809560:	53                   	push   %rbx
  809561:	48 83 ec 10          	sub    $0x10,%rsp
  809565:	48 89 fb             	mov    %rdi,%rbx
  809568:	48 89 f5             	mov    %rsi,%rbp
  80956b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809572:	00 00 
  809574:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  809579:	31 c0                	xor    %eax,%eax
  80957b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  809582:	f2 ae                	repnz scas %es:(%rdi),%al
  809584:	48 89 ce             	mov    %rcx,%rsi
  809587:	48 f7 d6             	not    %rsi
  80958a:	8d 46 ff             	lea    -0x1(%rsi),%eax
  80958d:	eb 0f                	jmp    80959e <urlencode+0x41>
  80958f:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  809593:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  809597:	48 83 c3 01          	add    $0x1,%rbx
  80959b:	44 89 e0             	mov    %r12d,%eax
  80959e:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  8095a2:	85 c0                	test   %eax,%eax
  8095a4:	0f 84 a8 00 00 00    	je     809652 <urlencode+0xf5>
  8095aa:	44 0f b6 03          	movzbl (%rbx),%r8d
  8095ae:	41 80 f8 2a          	cmp    $0x2a,%r8b
  8095b2:	0f 94 c2             	sete   %dl
  8095b5:	41 80 f8 2d          	cmp    $0x2d,%r8b
  8095b9:	0f 94 c0             	sete   %al
  8095bc:	08 c2                	or     %al,%dl
  8095be:	75 cf                	jne    80958f <urlencode+0x32>
  8095c0:	41 80 f8 2e          	cmp    $0x2e,%r8b
  8095c4:	74 c9                	je     80958f <urlencode+0x32>
  8095c6:	41 80 f8 5f          	cmp    $0x5f,%r8b
  8095ca:	74 c3                	je     80958f <urlencode+0x32>
  8095cc:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  8095d0:	3c 09                	cmp    $0x9,%al
  8095d2:	76 bb                	jbe    80958f <urlencode+0x32>
  8095d4:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  8095d8:	3c 19                	cmp    $0x19,%al
  8095da:	76 b3                	jbe    80958f <urlencode+0x32>
  8095dc:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  8095e0:	3c 19                	cmp    $0x19,%al
  8095e2:	76 ab                	jbe    80958f <urlencode+0x32>
  8095e4:	41 80 f8 20          	cmp    $0x20,%r8b
  8095e8:	74 56                	je     809640 <urlencode+0xe3>
  8095ea:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  8095ee:	3c 5f                	cmp    $0x5f,%al
  8095f0:	0f 96 c2             	setbe  %dl
  8095f3:	41 80 f8 09          	cmp    $0x9,%r8b
  8095f7:	0f 94 c0             	sete   %al
  8095fa:	08 c2                	or     %al,%dl
  8095fc:	74 4f                	je     80964d <urlencode+0xf0>
  8095fe:	48 89 e7             	mov    %rsp,%rdi
  809601:	45 0f b6 c0          	movzbl %r8b,%r8d
  809605:	48 8d 0d 8c 12 00 00 	lea    0x128c(%rip),%rcx        # 80a898 <trans_char+0xa8>
  80960c:	ba 08 00 00 00       	mov    $0x8,%edx
  809611:	be 01 00 00 00       	mov    $0x1,%esi
  809616:	b8 00 00 00 00       	mov    $0x0,%eax
  80961b:	e8 30 78 bf ff       	call   400e50 <__sprintf_chk@plt>
  809620:	0f b6 04 24          	movzbl (%rsp),%eax
  809624:	88 45 00             	mov    %al,0x0(%rbp)
  809627:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  80962c:	88 45 01             	mov    %al,0x1(%rbp)
  80962f:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  809634:	88 45 02             	mov    %al,0x2(%rbp)
  809637:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  80963b:	e9 57 ff ff ff       	jmp    809597 <urlencode+0x3a>
  809640:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  809644:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  809648:	e9 4a ff ff ff       	jmp    809597 <urlencode+0x3a>
  80964d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809652:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  809657:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  80965e:	00 00 
  809660:	75 09                	jne    80966b <urlencode+0x10e>
  809662:	48 83 c4 10          	add    $0x10,%rsp
  809666:	5b                   	pop    %rbx
  809667:	5d                   	pop    %rbp
  809668:	41 5c                	pop    %r12
  80966a:	c3                   	ret
  80966b:	e8 70 76 bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809670 <submitr>:
  809670:	41 57                	push   %r15
  809672:	41 56                	push   %r14
  809674:	41 55                	push   %r13
  809676:	41 54                	push   %r12
  809678:	55                   	push   %rbp
  809679:	53                   	push   %rbx
  80967a:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  809681:	49 89 fd             	mov    %rdi,%r13
  809684:	89 74 24 14          	mov    %esi,0x14(%rsp)
  809688:	49 89 d7             	mov    %rdx,%r15
  80968b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  809690:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  809695:	4d 89 ce             	mov    %r9,%r14
  809698:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  80969f:	00 
  8096a0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  8096a7:	00 00 
  8096a9:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  8096b0:	00 
  8096b1:	31 c0                	xor    %eax,%eax
  8096b3:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  8096ba:	00 
  8096bb:	ba 00 00 00 00       	mov    $0x0,%edx
  8096c0:	be 01 00 00 00       	mov    $0x1,%esi
  8096c5:	bf 02 00 00 00       	mov    $0x2,%edi
  8096ca:	e8 91 77 bf ff       	call   400e60 <socket@plt>
  8096cf:	85 c0                	test   %eax,%eax
  8096d1:	0f 88 a9 02 00 00    	js     809980 <submitr+0x310>
  8096d7:	89 c3                	mov    %eax,%ebx
  8096d9:	4c 89 ef             	mov    %r13,%rdi
  8096dc:	e8 6f 76 bf ff       	call   400d50 <gethostbyname@plt>
  8096e1:	48 85 c0             	test   %rax,%rax
  8096e4:	0f 84 e2 02 00 00    	je     8099cc <submitr+0x35c>
  8096ea:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  8096ef:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  8096f6:	00 00 
  8096f8:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  8096ff:	00 
  809700:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  809707:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  80970e:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809712:	48 8b 40 18          	mov    0x18(%rax),%rax
  809716:	48 8b 30             	mov    (%rax),%rsi
  809719:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  80971e:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809723:	e8 38 76 bf ff       	call   400d60 <__memmove_chk@plt>
  809728:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  80972d:	66 c1 c8 08          	ror    $0x8,%ax
  809731:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  809736:	ba 10 00 00 00       	mov    $0x10,%edx
  80973b:	4c 89 e6             	mov    %r12,%rsi
  80973e:	89 df                	mov    %ebx,%edi
  809740:	e8 eb 76 bf ff       	call   400e30 <connect@plt>
  809745:	85 c0                	test   %eax,%eax
  809747:	0f 88 e7 02 00 00    	js     809a34 <submitr+0x3c4>
  80974d:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  809754:	b8 00 00 00 00       	mov    $0x0,%eax
  809759:	48 89 f1             	mov    %rsi,%rcx
  80975c:	4c 89 f7             	mov    %r14,%rdi
  80975f:	f2 ae                	repnz scas %es:(%rdi),%al
  809761:	48 89 ca             	mov    %rcx,%rdx
  809764:	48 f7 d2             	not    %rdx
  809767:	48 89 f1             	mov    %rsi,%rcx
  80976a:	4c 89 ff             	mov    %r15,%rdi
  80976d:	f2 ae                	repnz scas %es:(%rdi),%al
  80976f:	48 f7 d1             	not    %rcx
  809772:	49 89 c8             	mov    %rcx,%r8
  809775:	48 89 f1             	mov    %rsi,%rcx
  809778:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  80977d:	f2 ae                	repnz scas %es:(%rdi),%al
  80977f:	48 f7 d1             	not    %rcx
  809782:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  809787:	48 89 f1             	mov    %rsi,%rcx
  80978a:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  80978f:	f2 ae                	repnz scas %es:(%rdi),%al
  809791:	48 89 c8             	mov    %rcx,%rax
  809794:	48 f7 d0             	not    %rax
  809797:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  80979c:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  8097a1:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  8097a8:	00 
  8097a9:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  8097af:	0f 87 d9 02 00 00    	ja     809a8e <submitr+0x41e>
  8097b5:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  8097bc:	00 
  8097bd:	b9 00 04 00 00       	mov    $0x400,%ecx
  8097c2:	b8 00 00 00 00       	mov    $0x0,%eax
  8097c7:	48 89 f7             	mov    %rsi,%rdi
  8097ca:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  8097cd:	4c 89 f7             	mov    %r14,%rdi
  8097d0:	e8 88 fd ff ff       	call   80955d <urlencode>
  8097d5:	85 c0                	test   %eax,%eax
  8097d7:	0f 88 24 03 00 00    	js     809b01 <submitr+0x491>
  8097dd:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  8097e4:	00 
  8097e5:	41 55                	push   %r13
  8097e7:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  8097ee:	00 
  8097ef:	50                   	push   %rax
  8097f0:	4d 89 f9             	mov    %r15,%r9
  8097f3:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  8097f8:	48 8d 0d 29 10 00 00 	lea    0x1029(%rip),%rcx        # 80a828 <trans_char+0x38>
  8097ff:	ba 00 20 00 00       	mov    $0x2000,%edx
  809804:	be 01 00 00 00       	mov    $0x1,%esi
  809809:	4c 89 e7             	mov    %r12,%rdi
  80980c:	b8 00 00 00 00       	mov    $0x0,%eax
  809811:	e8 3a 76 bf ff       	call   400e50 <__sprintf_chk@plt>
  809816:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  80981d:	b8 00 00 00 00       	mov    $0x0,%eax
  809822:	4c 89 e7             	mov    %r12,%rdi
  809825:	f2 ae                	repnz scas %es:(%rdi),%al
  809827:	48 89 ca             	mov    %rcx,%rdx
  80982a:	48 f7 d2             	not    %rdx
  80982d:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  809831:	4c 89 e6             	mov    %r12,%rsi
  809834:	89 df                	mov    %ebx,%edi
  809836:	e8 95 fb ff ff       	call   8093d0 <rio_writen>
  80983b:	48 83 c4 10          	add    $0x10,%rsp
  80983f:	48 85 c0             	test   %rax,%rax
  809842:	0f 88 44 03 00 00    	js     809b8c <submitr+0x51c>
  809848:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  80984d:	89 de                	mov    %ebx,%esi
  80984f:	4c 89 e7             	mov    %r12,%rdi
  809852:	e8 37 fb ff ff       	call   80938e <rio_readinitb>
  809857:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  80985e:	00 
  80985f:	ba 00 20 00 00       	mov    $0x2000,%edx
  809864:	4c 89 e7             	mov    %r12,%rdi
  809867:	e8 4d fc ff ff       	call   8094b9 <rio_readlineb>
  80986c:	48 85 c0             	test   %rax,%rax
  80986f:	0f 8e 86 03 00 00    	jle    809bfb <submitr+0x58b>
  809875:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  80987a:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  809881:	00 
  809882:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  809889:	00 
  80988a:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  809891:	00 
  809892:	48 8d 35 06 10 00 00 	lea    0x1006(%rip),%rsi        # 80a89f <trans_char+0xaf>
  809899:	b8 00 00 00 00       	mov    $0x0,%eax
  80989e:	e8 1d 75 bf ff       	call   400dc0 <__isoc99_sscanf@plt>
  8098a3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8098aa:	00 
  8098ab:	b9 03 00 00 00       	mov    $0x3,%ecx
  8098b0:	48 8d 3d ff 0f 00 00 	lea    0xfff(%rip),%rdi        # 80a8b6 <trans_char+0xc6>
  8098b7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  8098b9:	0f 97 c0             	seta   %al
  8098bc:	1c 00                	sbb    $0x0,%al
  8098be:	84 c0                	test   %al,%al
  8098c0:	0f 84 b3 03 00 00    	je     809c79 <submitr+0x609>
  8098c6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  8098cd:	00 
  8098ce:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  8098d3:	ba 00 20 00 00       	mov    $0x2000,%edx
  8098d8:	e8 dc fb ff ff       	call   8094b9 <rio_readlineb>
  8098dd:	48 85 c0             	test   %rax,%rax
  8098e0:	7f c1                	jg     8098a3 <submitr+0x233>
  8098e2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  8098e9:	3a 20 43 
  8098ec:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  8098f3:	20 75 6e 
  8098f6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8098fa:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8098fe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809905:	74 6f 20 
  809908:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  80990f:	68 65 61 
  809912:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809916:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  80991a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  809921:	66 72 6f 
  809924:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  80992b:	20 72 65 
  80992e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809932:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809936:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  80993d:	73 65 72 
  809940:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809944:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  80994b:	89 df                	mov    %ebx,%edi
  80994d:	e8 ce 73 bf ff       	call   400d20 <close@plt>
  809952:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809957:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  80995e:	00 
  80995f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  809966:	00 00 
  809968:	0f 85 7e 04 00 00    	jne    809dec <submitr+0x77c>
  80996e:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  809975:	5b                   	pop    %rbx
  809976:	5d                   	pop    %rbp
  809977:	41 5c                	pop    %r12
  809979:	41 5d                	pop    %r13
  80997b:	41 5e                	pop    %r14
  80997d:	41 5f                	pop    %r15
  80997f:	c3                   	ret
  809980:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809987:	3a 20 43 
  80998a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809991:	20 75 6e 
  809994:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809998:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  80999c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8099a3:	74 6f 20 
  8099a6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  8099ad:	65 20 73 
  8099b0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  8099b4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  8099b8:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  8099bf:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  8099c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  8099ca:	eb 8b                	jmp    809957 <submitr+0x2e7>
  8099cc:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  8099d3:	3a 20 44 
  8099d6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  8099dd:	20 75 6e 
  8099e0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  8099e4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  8099e8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  8099ef:	74 6f 20 
  8099f2:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  8099f9:	76 65 20 
  8099fc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809a00:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809a04:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  809a0b:	72 20 61 
  809a0e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809a12:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  809a19:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  809a1f:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  809a23:	89 df                	mov    %ebx,%edi
  809a25:	e8 f6 72 bf ff       	call   400d20 <close@plt>
  809a2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809a2f:	e9 23 ff ff ff       	jmp    809957 <submitr+0x2e7>
  809a34:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  809a3b:	3a 20 55 
  809a3e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809a45:	20 74 6f 
  809a48:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809a4c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809a50:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  809a57:	65 63 74 
  809a5a:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  809a61:	68 65 20 
  809a64:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809a68:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809a6c:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  809a73:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  809a79:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  809a7d:	89 df                	mov    %ebx,%edi
  809a7f:	e8 9c 72 bf ff       	call   400d20 <close@plt>
  809a84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809a89:	e9 c9 fe ff ff       	jmp    809957 <submitr+0x2e7>
  809a8e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809a95:	3a 20 52 
  809a98:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  809a9f:	20 73 74 
  809aa2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809aa6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809aaa:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  809ab1:	74 6f 6f 
  809ab4:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  809abb:	65 2e 20 
  809abe:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809ac2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809ac6:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  809acd:	61 73 65 
  809ad0:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  809ad7:	49 54 52 
  809ada:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809ade:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809ae2:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  809ae9:	55 46 00 
  809aec:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809af0:	89 df                	mov    %ebx,%edi
  809af2:	e8 29 72 bf ff       	call   400d20 <close@plt>
  809af7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809afc:	e9 56 fe ff ff       	jmp    809957 <submitr+0x2e7>
  809b01:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  809b08:	3a 20 52 
  809b0b:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  809b12:	20 73 74 
  809b15:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809b19:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809b1d:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  809b24:	63 6f 6e 
  809b27:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  809b2e:	20 61 6e 
  809b31:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809b35:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809b39:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  809b40:	67 61 6c 
  809b43:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  809b4a:	6e 70 72 
  809b4d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809b51:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809b55:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  809b5c:	6c 65 20 
  809b5f:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  809b66:	63 74 65 
  809b69:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809b6d:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  809b71:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  809b77:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  809b7b:	89 df                	mov    %ebx,%edi
  809b7d:	e8 9e 71 bf ff       	call   400d20 <close@plt>
  809b82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809b87:	e9 cb fd ff ff       	jmp    809957 <submitr+0x2e7>
  809b8c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809b93:	3a 20 43 
  809b96:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809b9d:	20 75 6e 
  809ba0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809ba4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809ba8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809baf:	74 6f 20 
  809bb2:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  809bb9:	20 74 6f 
  809bbc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809bc0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809bc4:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  809bcb:	72 65 73 
  809bce:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  809bd5:	65 72 76 
  809bd8:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809bdc:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809be0:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  809be6:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  809bea:	89 df                	mov    %ebx,%edi
  809bec:	e8 2f 71 bf ff       	call   400d20 <close@plt>
  809bf1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809bf6:	e9 5c fd ff ff       	jmp    809957 <submitr+0x2e7>
  809bfb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809c02:	3a 20 43 
  809c05:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809c0c:	20 75 6e 
  809c0f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809c13:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809c17:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809c1e:	74 6f 20 
  809c21:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  809c28:	66 69 72 
  809c2b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809c2f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809c33:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  809c3a:	61 64 65 
  809c3d:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  809c44:	6d 20 72 
  809c47:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809c4b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809c4f:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  809c56:	20 73 65 
  809c59:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809c5d:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  809c64:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  809c68:	89 df                	mov    %ebx,%edi
  809c6a:	e8 b1 70 bf ff       	call   400d20 <close@plt>
  809c6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809c74:	e9 de fc ff ff       	jmp    809957 <submitr+0x2e7>
  809c79:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809c80:	00 
  809c81:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  809c86:	ba 00 20 00 00       	mov    $0x2000,%edx
  809c8b:	e8 29 f8 ff ff       	call   8094b9 <rio_readlineb>
  809c90:	48 85 c0             	test   %rax,%rax
  809c93:	0f 8e 96 00 00 00    	jle    809d2f <submitr+0x6bf>
  809c99:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  809c9e:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  809ca5:	0f 85 08 01 00 00    	jne    809db3 <submitr+0x743>
  809cab:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  809cb2:	00 
  809cb3:	48 89 ef             	mov    %rbp,%rdi
  809cb6:	e8 f5 6f bf ff       	call   400cb0 <strcpy@plt>
  809cbb:	89 df                	mov    %ebx,%edi
  809cbd:	e8 5e 70 bf ff       	call   400d20 <close@plt>
  809cc2:	b9 04 00 00 00       	mov    $0x4,%ecx
  809cc7:	48 8d 3d e2 0b 00 00 	lea    0xbe2(%rip),%rdi        # 80a8b0 <trans_char+0xc0>
  809cce:	48 89 ee             	mov    %rbp,%rsi
  809cd1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809cd3:	0f 97 c0             	seta   %al
  809cd6:	1c 00                	sbb    $0x0,%al
  809cd8:	0f be c0             	movsbl %al,%eax
  809cdb:	85 c0                	test   %eax,%eax
  809cdd:	0f 84 74 fc ff ff    	je     809957 <submitr+0x2e7>
  809ce3:	b9 05 00 00 00       	mov    $0x5,%ecx
  809ce8:	48 8d 3d c5 0b 00 00 	lea    0xbc5(%rip),%rdi        # 80a8b4 <trans_char+0xc4>
  809cef:	48 89 ee             	mov    %rbp,%rsi
  809cf2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809cf4:	0f 97 c0             	seta   %al
  809cf7:	1c 00                	sbb    $0x0,%al
  809cf9:	0f be c0             	movsbl %al,%eax
  809cfc:	85 c0                	test   %eax,%eax
  809cfe:	0f 84 53 fc ff ff    	je     809957 <submitr+0x2e7>
  809d04:	b9 03 00 00 00       	mov    $0x3,%ecx
  809d09:	48 8d 3d a9 0b 00 00 	lea    0xba9(%rip),%rdi        # 80a8b9 <trans_char+0xc9>
  809d10:	48 89 ee             	mov    %rbp,%rsi
  809d13:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  809d15:	0f 97 c0             	seta   %al
  809d18:	1c 00                	sbb    $0x0,%al
  809d1a:	0f be c0             	movsbl %al,%eax
  809d1d:	85 c0                	test   %eax,%eax
  809d1f:	0f 84 32 fc ff ff    	je     809957 <submitr+0x2e7>
  809d25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809d2a:	e9 28 fc ff ff       	jmp    809957 <submitr+0x2e7>
  809d2f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809d36:	3a 20 43 
  809d39:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809d40:	20 75 6e 
  809d43:	48 89 45 00          	mov    %rax,0x0(%rbp)
  809d47:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  809d4b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809d52:	74 6f 20 
  809d55:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  809d5c:	73 74 61 
  809d5f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  809d63:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  809d67:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  809d6e:	65 73 73 
  809d71:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  809d78:	72 6f 6d 
  809d7b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  809d7f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  809d83:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  809d8a:	6c 74 20 
  809d8d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  809d91:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  809d98:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  809d9e:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  809da2:	89 df                	mov    %ebx,%edi
  809da4:	e8 77 6f bf ff       	call   400d20 <close@plt>
  809da9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809dae:	e9 a4 fb ff ff       	jmp    809957 <submitr+0x2e7>
  809db3:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  809dba:	00 
  809dbb:	48 8d 0d a6 0a 00 00 	lea    0xaa6(%rip),%rcx        # 80a868 <trans_char+0x78>
  809dc2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  809dc9:	be 01 00 00 00       	mov    $0x1,%esi
  809dce:	48 89 ef             	mov    %rbp,%rdi
  809dd1:	b8 00 00 00 00       	mov    $0x0,%eax
  809dd6:	e8 75 70 bf ff       	call   400e50 <__sprintf_chk@plt>
  809ddb:	89 df                	mov    %ebx,%edi
  809ddd:	e8 3e 6f bf ff       	call   400d20 <close@plt>
  809de2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809de7:	e9 6b fb ff ff       	jmp    809957 <submitr+0x2e7>
  809dec:	e8 ef 6e bf ff       	call   400ce0 <__stack_chk_fail@plt>

0000000000809df1 <init_timeout>:
  809df1:	85 ff                	test   %edi,%edi
  809df3:	74 28                	je     809e1d <init_timeout+0x2c>
  809df5:	53                   	push   %rbx
  809df6:	89 fb                	mov    %edi,%ebx
  809df8:	85 ff                	test   %edi,%edi
  809dfa:	78 1a                	js     809e16 <init_timeout+0x25>
  809dfc:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 8093a0 <sigalrm_handler>
  809e03:	bf 0e 00 00 00       	mov    $0xe,%edi
  809e08:	e8 33 6f bf ff       	call   400d40 <signal@plt>
  809e0d:	89 df                	mov    %ebx,%edi
  809e0f:	e8 fc 6e bf ff       	call   400d10 <alarm@plt>
  809e14:	5b                   	pop    %rbx
  809e15:	c3                   	ret
  809e16:	bb 00 00 00 00       	mov    $0x0,%ebx
  809e1b:	eb df                	jmp    809dfc <init_timeout+0xb>
  809e1d:	f3 c3                	repz ret

0000000000809e1f <init_driver>:
  809e1f:	41 54                	push   %r12
  809e21:	55                   	push   %rbp
  809e22:	53                   	push   %rbx
  809e23:	48 83 ec 20          	sub    $0x20,%rsp
  809e27:	49 89 fc             	mov    %rdi,%r12
  809e2a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  809e31:	00 00 
  809e33:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  809e38:	31 c0                	xor    %eax,%eax
  809e3a:	be 01 00 00 00       	mov    $0x1,%esi
  809e3f:	bf 0d 00 00 00       	mov    $0xd,%edi
  809e44:	e8 f7 6e bf ff       	call   400d40 <signal@plt>
  809e49:	be 01 00 00 00       	mov    $0x1,%esi
  809e4e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809e53:	e8 e8 6e bf ff       	call   400d40 <signal@plt>
  809e58:	be 01 00 00 00       	mov    $0x1,%esi
  809e5d:	bf 1d 00 00 00       	mov    $0x1d,%edi
  809e62:	e8 d9 6e bf ff       	call   400d40 <signal@plt>
  809e67:	ba 00 00 00 00       	mov    $0x0,%edx
  809e6c:	be 01 00 00 00       	mov    $0x1,%esi
  809e71:	bf 02 00 00 00       	mov    $0x2,%edi
  809e76:	e8 e5 6f bf ff       	call   400e60 <socket@plt>
  809e7b:	85 c0                	test   %eax,%eax
  809e7d:	0f 88 a3 00 00 00    	js     809f26 <init_driver+0x107>
  809e83:	89 c3                	mov    %eax,%ebx
  809e85:	48 8d 3d 55 05 00 00 	lea    0x555(%rip),%rdi        # 80a3e1 <_IO_stdin_used+0x251>
  809e8c:	e8 bf 6e bf ff       	call   400d50 <gethostbyname@plt>
  809e91:	48 85 c0             	test   %rax,%rax
  809e94:	0f 84 df 00 00 00    	je     809f79 <init_driver+0x15a>
  809e9a:	48 89 e5             	mov    %rsp,%rbp
  809e9d:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  809ea4:	00 00 
  809ea6:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  809ead:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  809eb3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  809eb9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  809ebd:	48 8b 40 18          	mov    0x18(%rax),%rax
  809ec1:	48 8b 30             	mov    (%rax),%rsi
  809ec4:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  809ec8:	b9 0c 00 00 00       	mov    $0xc,%ecx
  809ecd:	e8 8e 6e bf ff       	call   400d60 <__memmove_chk@plt>
  809ed2:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  809ed9:	ba 10 00 00 00       	mov    $0x10,%edx
  809ede:	48 89 ee             	mov    %rbp,%rsi
  809ee1:	89 df                	mov    %ebx,%edi
  809ee3:	e8 48 6f bf ff       	call   400e30 <connect@plt>
  809ee8:	85 c0                	test   %eax,%eax
  809eea:	0f 88 fb 00 00 00    	js     809feb <init_driver+0x1cc>
  809ef0:	89 df                	mov    %ebx,%edi
  809ef2:	e8 29 6e bf ff       	call   400d20 <close@plt>
  809ef7:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  809efe:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  809f04:	b8 00 00 00 00       	mov    $0x0,%eax
  809f09:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  809f0e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  809f15:	00 00 
  809f17:	0f 85 28 01 00 00    	jne    80a045 <init_driver+0x226>
  809f1d:	48 83 c4 20          	add    $0x20,%rsp
  809f21:	5b                   	pop    %rbx
  809f22:	5d                   	pop    %rbp
  809f23:	41 5c                	pop    %r12
  809f25:	c3                   	ret
  809f26:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  809f2d:	3a 20 43 
  809f30:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  809f37:	20 75 6e 
  809f3a:	49 89 04 24          	mov    %rax,(%r12)
  809f3e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809f43:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809f4a:	74 6f 20 
  809f4d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  809f54:	65 20 73 
  809f57:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809f5c:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809f61:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  809f68:	6b 65 
  809f6a:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  809f71:	00 
  809f72:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809f77:	eb 90                	jmp    809f09 <init_driver+0xea>
  809f79:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  809f80:	3a 20 44 
  809f83:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  809f8a:	20 75 6e 
  809f8d:	49 89 04 24          	mov    %rax,(%r12)
  809f91:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  809f96:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  809f9d:	74 6f 20 
  809fa0:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  809fa7:	76 65 20 
  809faa:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  809faf:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  809fb4:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  809fbb:	72 20 61 
  809fbe:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  809fc3:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  809fca:	72 65 
  809fcc:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  809fd3:	73 
  809fd4:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  809fda:	89 df                	mov    %ebx,%edi
  809fdc:	e8 3f 6d bf ff       	call   400d20 <close@plt>
  809fe1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  809fe6:	e9 1e ff ff ff       	jmp    809f09 <init_driver+0xea>
  809feb:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  809ff2:	3a 20 55 
  809ff5:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  809ffc:	20 74 6f 
  809fff:	49 89 04 24          	mov    %rax,(%r12)
  80a003:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  80a008:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  80a00f:	65 63 74 
  80a012:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  80a019:	65 72 76 
  80a01c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  80a021:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  80a026:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  80a02d:	72 
  80a02e:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  80a034:	89 df                	mov    %ebx,%edi
  80a036:	e8 e5 6c bf ff       	call   400d20 <close@plt>
  80a03b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  80a040:	e9 c4 fe ff ff       	jmp    809f09 <init_driver+0xea>
  80a045:	e8 96 6c bf ff       	call   400ce0 <__stack_chk_fail@plt>

000000000080a04a <driver_post>:
  80a04a:	53                   	push   %rbx
  80a04b:	4c 89 cb             	mov    %r9,%rbx
  80a04e:	45 85 c0             	test   %r8d,%r8d
  80a051:	75 18                	jne    80a06b <driver_post+0x21>
  80a053:	48 85 ff             	test   %rdi,%rdi
  80a056:	74 05                	je     80a05d <driver_post+0x13>
  80a058:	80 3f 00             	cmpb   $0x0,(%rdi)
  80a05b:	75 37                	jne    80a094 <driver_post+0x4a>
  80a05d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  80a062:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  80a066:	44 89 c0             	mov    %r8d,%eax
  80a069:	5b                   	pop    %rbx
  80a06a:	c3                   	ret
  80a06b:	48 89 ca             	mov    %rcx,%rdx
  80a06e:	48 8d 35 47 08 00 00 	lea    0x847(%rip),%rsi        # 80a8bc <trans_char+0xcc>
  80a075:	bf 01 00 00 00       	mov    $0x1,%edi
  80a07a:	b8 00 00 00 00       	mov    $0x0,%eax
  80a07f:	e8 5c 6d bf ff       	call   400de0 <__printf_chk@plt>
  80a084:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  80a089:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  80a08d:	b8 00 00 00 00       	mov    $0x0,%eax
  80a092:	eb d5                	jmp    80a069 <driver_post+0x1f>
  80a094:	48 83 ec 08          	sub    $0x8,%rsp
  80a098:	41 51                	push   %r9
  80a09a:	49 89 c9             	mov    %rcx,%r9
  80a09d:	49 89 d0             	mov    %rdx,%r8
  80a0a0:	48 89 f9             	mov    %rdi,%rcx
  80a0a3:	48 89 f2             	mov    %rsi,%rdx
  80a0a6:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  80a0ab:	48 8d 3d 2f 03 00 00 	lea    0x32f(%rip),%rdi        # 80a3e1 <_IO_stdin_used+0x251>
  80a0b2:	e8 b9 f5 ff ff       	call   809670 <submitr>
  80a0b7:	48 83 c4 10          	add    $0x10,%rsp
  80a0bb:	eb ac                	jmp    80a069 <driver_post+0x1f>

000000000080a0bd <check>:
  80a0bd:	89 f8                	mov    %edi,%eax
  80a0bf:	c1 e8 1c             	shr    $0x1c,%eax
  80a0c2:	85 c0                	test   %eax,%eax
  80a0c4:	74 1d                	je     80a0e3 <check+0x26>
  80a0c6:	b9 00 00 00 00       	mov    $0x0,%ecx
  80a0cb:	83 f9 1f             	cmp    $0x1f,%ecx
  80a0ce:	7f 0d                	jg     80a0dd <check+0x20>
  80a0d0:	89 f8                	mov    %edi,%eax
  80a0d2:	d3 e8                	shr    %cl,%eax
  80a0d4:	3c 0a                	cmp    $0xa,%al
  80a0d6:	74 11                	je     80a0e9 <check+0x2c>
  80a0d8:	83 c1 08             	add    $0x8,%ecx
  80a0db:	eb ee                	jmp    80a0cb <check+0xe>
  80a0dd:	b8 01 00 00 00       	mov    $0x1,%eax
  80a0e2:	c3                   	ret
  80a0e3:	b8 00 00 00 00       	mov    $0x0,%eax
  80a0e8:	c3                   	ret
  80a0e9:	b8 00 00 00 00       	mov    $0x0,%eax
  80a0ee:	c3                   	ret

000000000080a0ef <gencookie>:
  80a0ef:	53                   	push   %rbx
  80a0f0:	83 c7 01             	add    $0x1,%edi
  80a0f3:	e8 98 6b bf ff       	call   400c90 <srandom@plt>
  80a0f8:	e8 a3 6c bf ff       	call   400da0 <random@plt>
  80a0fd:	89 c3                	mov    %eax,%ebx
  80a0ff:	89 c7                	mov    %eax,%edi
  80a101:	e8 b7 ff ff ff       	call   80a0bd <check>
  80a106:	85 c0                	test   %eax,%eax
  80a108:	74 ee                	je     80a0f8 <gencookie+0x9>
  80a10a:	89 d8                	mov    %ebx,%eax
  80a10c:	5b                   	pop    %rbx
  80a10d:	c3                   	ret
  80a10e:	66 90                	xchg   %ax,%ax

000000000080a110 <__libc_csu_init>:
  80a110:	41 57                	push   %r15
  80a112:	41 56                	push   %r14
  80a114:	49 89 d7             	mov    %rdx,%r15
  80a117:	41 55                	push   %r13
  80a119:	41 54                	push   %r12
  80a11b:	4c 8d 25 ee 1c 20 00 	lea    0x201cee(%rip),%r12        # a0be10 <__frame_dummy_init_array_entry>
  80a122:	55                   	push   %rbp
  80a123:	48 8d 2d ee 1c 20 00 	lea    0x201cee(%rip),%rbp        # a0be18 <__do_global_dtors_aux_fini_array_entry>
  80a12a:	53                   	push   %rbx
  80a12b:	41 89 fd             	mov    %edi,%r13d
  80a12e:	49 89 f6             	mov    %rsi,%r14
  80a131:	4c 29 e5             	sub    %r12,%rbp
  80a134:	48 83 ec 08          	sub    $0x8,%rsp
  80a138:	48 c1 fd 03          	sar    $0x3,%rbp
  80a13c:	e8 07 6b bf ff       	call   400c48 <_init>
  80a141:	48 85 ed             	test   %rbp,%rbp
  80a144:	74 20                	je     80a166 <__libc_csu_init+0x56>
  80a146:	31 db                	xor    %ebx,%ebx
  80a148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  80a14f:	00 
  80a150:	4c 89 fa             	mov    %r15,%rdx
  80a153:	4c 89 f6             	mov    %r14,%rsi
  80a156:	44 89 ef             	mov    %r13d,%edi
  80a159:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  80a15d:	48 83 c3 01          	add    $0x1,%rbx
  80a161:	48 39 dd             	cmp    %rbx,%rbp
  80a164:	75 ea                	jne    80a150 <__libc_csu_init+0x40>
  80a166:	48 83 c4 08          	add    $0x8,%rsp
  80a16a:	5b                   	pop    %rbx
  80a16b:	5d                   	pop    %rbp
  80a16c:	41 5c                	pop    %r12
  80a16e:	41 5d                	pop    %r13
  80a170:	41 5e                	pop    %r14
  80a172:	41 5f                	pop    %r15
  80a174:	c3                   	ret
  80a175:	90                   	nop
  80a176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  80a17d:	00 00 00 

000000000080a180 <__libc_csu_fini>:
  80a180:	f3 c3                	repz ret

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

000000000080a184 <_fini>:
  80a184:	48 83 ec 08          	sub    $0x8,%rsp
  80a188:	48 83 c4 08          	add    $0x8,%rsp
  80a18c:	c3                   	ret
