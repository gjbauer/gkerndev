
start.o:	file format elf32-i386

Disassembly of section .text:

00000000 <start>:
       0: bc 00 20 00 00               	movl	$0x2000, %esp           # imm = 0x2000
       5: eb 21                        	jmp	0x28 <stublet>
       7: 90                           	nop

00000008 <mboot>:
       8: 02 b0 ad 1b 03 00            	addb	0x31bad(%eax), %dh
       e: 01 00                        	addl	%eax, (%eax)
      10: fb                           	sti
      11: 4f                           	decl	%edi
      12: 51                           	pushl	%ecx
      13: e4 08                        	inb	$0x8, %al
		...
      25: 00 00                        	addb	%al, (%eax)
      27: 00 e8                        	addb	%ch, %al

00000028 <stublet>:
      28: e8 fc ff ff ff               	calll	0x29 <stublet+0x1>
      2d: eb fe                        	jmp	0x2d <stublet+0x5>

0000002f <_gdt_flush>:
      2f: 0f 01 15 00 00 00 00         	lgdtl	0x0
      36: 66 b8 10 00                  	movw	$0x10, %ax
      3a: 8e d8                        	movl	%eax, %ds
      3c: 8e c0                        	movl	%eax, %es
      3e: 8e e0                        	movl	%eax, %fs
      40: 8e e8                        	movl	%eax, %gs
      42: 8e d0                        	movl	%eax, %ss
      44: ea 4b 00 00 00 08 00         	ljmpl	$0x8, $0x4b

0000004b <flush2>:
      4b: c3                           	retl

0000004c <_idt_load>:
      4c: 0f 01 1d 00 00 00 00         	lidtl	0x0
      53: c3                           	retl

00000054 <_isr0>:
      54: fa                           	cli
      55: 6a 00                        	pushl	$0x0
      57: 6a 00                        	pushl	$0x0
      59: e9 f1 00 00 00               	jmp	0x14f <isr_common_stub>

0000005e <_isr1>:
      5e: fa                           	cli
      5f: 6a 00                        	pushl	$0x0
      61: 6a 01                        	pushl	$0x1
      63: e9 e7 00 00 00               	jmp	0x14f <isr_common_stub>

00000068 <_isr2>:
      68: fa                           	cli
      69: 6a 00                        	pushl	$0x0
      6b: 6a 02                        	pushl	$0x2
      6d: e9 dd 00 00 00               	jmp	0x14f <isr_common_stub>

00000072 <_isr3>:
      72: fa                           	cli
      73: 6a 00                        	pushl	$0x0
      75: 6a 03                        	pushl	$0x3
      77: e9 d3 00 00 00               	jmp	0x14f <isr_common_stub>

0000007c <_isr4>:
      7c: fa                           	cli
      7d: 6a 00                        	pushl	$0x0
      7f: 6a 04                        	pushl	$0x4
      81: e9 c9 00 00 00               	jmp	0x14f <isr_common_stub>

00000086 <_isr5>:
      86: fa                           	cli
      87: 6a 00                        	pushl	$0x0
      89: 6a 05                        	pushl	$0x5
      8b: e9 bf 00 00 00               	jmp	0x14f <isr_common_stub>

00000090 <_isr6>:
      90: fa                           	cli
      91: 6a 00                        	pushl	$0x0
      93: 6a 06                        	pushl	$0x6
      95: e9 b5 00 00 00               	jmp	0x14f <isr_common_stub>

0000009a <_isr7>:
      9a: fa                           	cli
      9b: 6a 00                        	pushl	$0x0
      9d: 6a 07                        	pushl	$0x7
      9f: e9 ab 00 00 00               	jmp	0x14f <isr_common_stub>

000000a4 <_isr8>:
      a4: fa                           	cli
      a5: 6a 08                        	pushl	$0x8
      a7: e9 a3 00 00 00               	jmp	0x14f <isr_common_stub>

000000ac <_isr9>:
      ac: fa                           	cli
      ad: 6a 00                        	pushl	$0x0
      af: 6a 09                        	pushl	$0x9
      b1: e9 99 00 00 00               	jmp	0x14f <isr_common_stub>

000000b6 <_isr10>:
      b6: fa                           	cli
      b7: 6a 0a                        	pushl	$0xa
      b9: e9 91 00 00 00               	jmp	0x14f <isr_common_stub>

000000be <_isr11>:
      be: fa                           	cli
      bf: 6a 0b                        	pushl	$0xb
      c1: e9 89 00 00 00               	jmp	0x14f <isr_common_stub>

000000c6 <_isr12>:
      c6: fa                           	cli
      c7: 6a 0c                        	pushl	$0xc
      c9: e9 81 00 00 00               	jmp	0x14f <isr_common_stub>

000000ce <_isr13>:
      ce: fa                           	cli
      cf: 6a 0d                        	pushl	$0xd
      d1: eb 7c                        	jmp	0x14f <isr_common_stub>

000000d3 <_isr14>:
      d3: fa                           	cli
      d4: 6a 0e                        	pushl	$0xe
      d6: eb 77                        	jmp	0x14f <isr_common_stub>

000000d8 <_isr15>:
      d8: fa                           	cli
      d9: 6a 00                        	pushl	$0x0
      db: 6a 0f                        	pushl	$0xf
      dd: eb 70                        	jmp	0x14f <isr_common_stub>

000000df <_isr16>:
      df: fa                           	cli
      e0: 6a 00                        	pushl	$0x0
      e2: 6a 10                        	pushl	$0x10
      e4: eb 69                        	jmp	0x14f <isr_common_stub>

000000e6 <_isr17>:
      e6: fa                           	cli
      e7: 6a 00                        	pushl	$0x0
      e9: 6a 11                        	pushl	$0x11
      eb: eb 62                        	jmp	0x14f <isr_common_stub>

000000ed <_isr18>:
      ed: fa                           	cli
      ee: 6a 00                        	pushl	$0x0
      f0: 6a 12                        	pushl	$0x12
      f2: eb 5b                        	jmp	0x14f <isr_common_stub>

000000f4 <_isr19>:
      f4: fa                           	cli
      f5: 6a 00                        	pushl	$0x0
      f7: 6a 13                        	pushl	$0x13
      f9: eb 54                        	jmp	0x14f <isr_common_stub>

000000fb <_isr20>:
      fb: fa                           	cli
      fc: 6a 00                        	pushl	$0x0
      fe: 6a 14                        	pushl	$0x14
     100: eb 4d                        	jmp	0x14f <isr_common_stub>

00000102 <_isr21>:
     102: fa                           	cli
     103: 6a 00                        	pushl	$0x0
     105: 6a 15                        	pushl	$0x15
     107: eb 46                        	jmp	0x14f <isr_common_stub>

00000109 <_isr22>:
     109: fa                           	cli
     10a: 6a 00                        	pushl	$0x0
     10c: 6a 16                        	pushl	$0x16
     10e: eb 3f                        	jmp	0x14f <isr_common_stub>

00000110 <_isr23>:
     110: fa                           	cli
     111: 6a 00                        	pushl	$0x0
     113: 6a 17                        	pushl	$0x17
     115: eb 38                        	jmp	0x14f <isr_common_stub>

00000117 <_isr24>:
     117: fa                           	cli
     118: 6a 00                        	pushl	$0x0
     11a: 6a 18                        	pushl	$0x18
     11c: eb 31                        	jmp	0x14f <isr_common_stub>

0000011e <_isr25>:
     11e: fa                           	cli
     11f: 6a 00                        	pushl	$0x0
     121: 6a 19                        	pushl	$0x19
     123: eb 2a                        	jmp	0x14f <isr_common_stub>

00000125 <_isr26>:
     125: fa                           	cli
     126: 6a 00                        	pushl	$0x0
     128: 6a 1a                        	pushl	$0x1a
     12a: eb 23                        	jmp	0x14f <isr_common_stub>

0000012c <_isr27>:
     12c: fa                           	cli
     12d: 6a 00                        	pushl	$0x0
     12f: 6a 1b                        	pushl	$0x1b
     131: eb 1c                        	jmp	0x14f <isr_common_stub>

00000133 <_isr28>:
     133: fa                           	cli
     134: 6a 00                        	pushl	$0x0
     136: 6a 1c                        	pushl	$0x1c
     138: eb 15                        	jmp	0x14f <isr_common_stub>

0000013a <_isr29>:
     13a: fa                           	cli
     13b: 6a 00                        	pushl	$0x0
     13d: 6a 1d                        	pushl	$0x1d
     13f: eb 0e                        	jmp	0x14f <isr_common_stub>

00000141 <_isr30>:
     141: fa                           	cli
     142: 6a 00                        	pushl	$0x0
     144: 6a 1e                        	pushl	$0x1e
     146: eb 07                        	jmp	0x14f <isr_common_stub>

00000148 <_isr31>:
     148: fa                           	cli
     149: 6a 00                        	pushl	$0x0
     14b: 6a 1f                        	pushl	$0x1f
     14d: eb 00                        	jmp	0x14f <isr_common_stub>

0000014f <isr_common_stub>:
     14f: 60                           	pushal
     150: 1e                           	pushl	%ds
     151: 06                           	pushl	%es
     152: 0f a0                        	pushl	%fs
     154: 0f a8                        	pushl	%gs
     156: 66 b8 10 00                  	movw	$0x10, %ax
     15a: 8e d8                        	movl	%eax, %ds
     15c: 8e c0                        	movl	%eax, %es
     15e: 8e e0                        	movl	%eax, %fs
     160: 8e e8                        	movl	%eax, %gs
     162: 89 e0                        	movl	%esp, %eax
     164: 50                           	pushl	%eax
     165: b8 00 00 00 00               	movl	$0x0, %eax
     16a: ff d0                        	calll	*%eax
     16c: 58                           	popl	%eax
     16d: 0f a9                        	popl	%gs
     16f: 0f a1                        	popl	%fs
     171: 07                           	popl	%es
     172: 1f                           	popl	%ds
     173: 61                           	popal
     174: 83 c4 08                     	addl	$0x8, %esp
     177: cf                           	iretl

00000178 <_irq0>:
     178: fa                           	cli
     179: 6a 00                        	pushl	$0x0
     17b: 6a 20                        	pushl	$0x20
     17d: eb 69                        	jmp	0x1e8 <irq_common_stub>

0000017f <_irq1>:
     17f: fa                           	cli
     180: 6a 00                        	pushl	$0x0
     182: 6a 21                        	pushl	$0x21
     184: eb 62                        	jmp	0x1e8 <irq_common_stub>

00000186 <_irq2>:
     186: fa                           	cli
     187: 6a 00                        	pushl	$0x0
     189: 6a 22                        	pushl	$0x22
     18b: eb 5b                        	jmp	0x1e8 <irq_common_stub>

0000018d <_irq3>:
     18d: fa                           	cli
     18e: 6a 00                        	pushl	$0x0
     190: 6a 23                        	pushl	$0x23
     192: eb 54                        	jmp	0x1e8 <irq_common_stub>

00000194 <_irq4>:
     194: fa                           	cli
     195: 6a 00                        	pushl	$0x0
     197: 6a 24                        	pushl	$0x24
     199: eb 4d                        	jmp	0x1e8 <irq_common_stub>

0000019b <_irq5>:
     19b: fa                           	cli
     19c: 6a 00                        	pushl	$0x0
     19e: 6a 25                        	pushl	$0x25
     1a0: eb 46                        	jmp	0x1e8 <irq_common_stub>

000001a2 <_irq6>:
     1a2: fa                           	cli
     1a3: 6a 00                        	pushl	$0x0
     1a5: 6a 26                        	pushl	$0x26
     1a7: eb 3f                        	jmp	0x1e8 <irq_common_stub>

000001a9 <_irq7>:
     1a9: fa                           	cli
     1aa: 6a 00                        	pushl	$0x0
     1ac: 6a 27                        	pushl	$0x27
     1ae: eb 38                        	jmp	0x1e8 <irq_common_stub>

000001b0 <_irq8>:
     1b0: fa                           	cli
     1b1: 6a 00                        	pushl	$0x0
     1b3: 6a 28                        	pushl	$0x28
     1b5: eb 31                        	jmp	0x1e8 <irq_common_stub>

000001b7 <_irq9>:
     1b7: fa                           	cli
     1b8: 6a 00                        	pushl	$0x0
     1ba: 6a 29                        	pushl	$0x29
     1bc: eb 2a                        	jmp	0x1e8 <irq_common_stub>

000001be <_irq10>:
     1be: fa                           	cli
     1bf: 6a 00                        	pushl	$0x0
     1c1: 6a 2a                        	pushl	$0x2a
     1c3: eb 23                        	jmp	0x1e8 <irq_common_stub>

000001c5 <_irq11>:
     1c5: fa                           	cli
     1c6: 6a 00                        	pushl	$0x0
     1c8: 6a 2b                        	pushl	$0x2b
     1ca: eb 1c                        	jmp	0x1e8 <irq_common_stub>

000001cc <_irq12>:
     1cc: fa                           	cli
     1cd: 6a 00                        	pushl	$0x0
     1cf: 6a 2c                        	pushl	$0x2c
     1d1: eb 15                        	jmp	0x1e8 <irq_common_stub>

000001d3 <_irq13>:
     1d3: fa                           	cli
     1d4: 6a 00                        	pushl	$0x0
     1d6: 6a 2d                        	pushl	$0x2d
     1d8: eb 0e                        	jmp	0x1e8 <irq_common_stub>

000001da <_irq14>:
     1da: fa                           	cli
     1db: 6a 00                        	pushl	$0x0
     1dd: 6a 2e                        	pushl	$0x2e
     1df: eb 07                        	jmp	0x1e8 <irq_common_stub>

000001e1 <_irq15>:
     1e1: fa                           	cli
     1e2: 6a 00                        	pushl	$0x0
     1e4: 6a 2f                        	pushl	$0x2f
     1e6: eb 00                        	jmp	0x1e8 <irq_common_stub>

000001e8 <irq_common_stub>:
     1e8: 60                           	pushal
     1e9: 1e                           	pushl	%ds
     1ea: 06                           	pushl	%es
     1eb: 0f a0                        	pushl	%fs
     1ed: 0f a8                        	pushl	%gs
     1ef: 66 b8 10 00                  	movw	$0x10, %ax
     1f3: 8e d8                        	movl	%eax, %ds
     1f5: 8e c0                        	movl	%eax, %es
     1f7: 8e e0                        	movl	%eax, %fs
     1f9: 8e e8                        	movl	%eax, %gs
     1fb: 89 e0                        	movl	%esp, %eax
     1fd: 50                           	pushl	%eax
     1fe: b8 00 00 00 00               	movl	$0x0, %eax
     203: ff d0                        	calll	*%eax
     205: 58                           	popl	%eax
     206: 0f a9                        	popl	%gs
     208: 0f a1                        	popl	%fs
     20a: 07                           	popl	%es
     20b: 1f                           	popl	%ds
     20c: 61                           	popal
     20d: 83 c4 08                     	addl	$0x8, %esp
     210: cf                           	iretl
