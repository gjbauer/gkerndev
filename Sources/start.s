start:
	movl	$0x2000, %esp           # imm = 0x2000
	jmp	stublet
	nop

mboot:
	addb	0x31bad(%eax), %dh
	addl	%eax, (%eax)
	sti
	decl	%edi
	pushl	%ecx
	inb	$0x8, %al
       
	addb	%al, (%eax)
	addb	%ch, %al

stublet:
	calll	0x29 <stublet+0x1>
	jmp	0x2d <stublet+0x5>

_gdt_flush:
	lgdtl	0x0
	movw	$0x10, %ax
	movl	%eax, %ds
	movl	%eax, %es
	movl	%eax, %fs
	movl	%eax, %gs
	movl	%eax, %ss
	ljmpl	$0x8, $0x4b

flush2:
	retl

_idt_load:
	lidtl	0x0
	retl

_isr0:
	cli
	pushl	$0x0
	pushl	$0x0
	jmp	isr_common_stub

_isr1:
	cli
	pushl	$0x0
	pushl	$0x1
	jmp	isr_common_stub

_isr2:
	cli
	pushl	$0x0
	pushl	$0x2
	jmp	isr_common_stub

_isr3:
	cli
	pushl	$0x0
	pushl	$0x3
	jmp	isr_common_stub

_isr4:
	cli
	pushl	$0x0
	pushl	$0x4
	jmp	isr_common_stub

_isr5:
	cli
	pushl	$0x0
	pushl	$0x5
	jmp	isr_common_stub

_isr6:
	cli
	pushl	$0x0
	pushl	$0x6
	jmp	0x14f <isr_common_stub>

_isr7:
	cli
	pushl	$0x0
	pushl	$0x7
	jmp	0x14f <isr_common_stub>

_isr8:
	cli
	pushl	$0x8
	jmp	isr_common_stub

_isr9:
	cli
	pushl	$0x0
	pushl	$0x9
	jmp	0x14f <isr_common_stub>

_isr10:
	cli
	pushl	$0xa
	jmp	isr_common_stub

_isr11:
	cli
	pushl	$0xb
	jmp	isr_common_stub

_isr12:
	cli
	pushl	$0xc
	jmp	isr_common_stub

_isr13:
	cli
	pushl	$0xd
	jmp	isr_common_stub

_isr14:
	cli
	pushl	$0xe
	jmp	isr_common_stub

_isr15:
	cli
	pushl	$0x0
	pushl	$0xf
	jmp	isr_common_stub

_isr16:
	cli
	pushl	$0x0
	pushl	$0x10
	jmp	isr_common_stub

_isr17:
	cli
	pushl	$0x0
	pushl	$0x11
	jmp	isr_common_stub

_isr18:
	cli
	pushl	$0x0
	pushl	$0x12
	jmp	isr_common_stub

_isr19:
	cli
	pushl	$0x0
	pushl	$0x13
	jmp	isr_common_stub

_isr20:
	cli
	pushl	$0x0
	pushl	$0x14
	jmp	isr_common_stub

_isr21:
	cli
	pushl	$0x0
	pushl	$0x15
	jmp	0x14f <isr_common_stub>

_isr22:
	cli
	pushl	$0x0
	pushl	$0x16
	jmp	isr_common_stub

_isr23:
	cli
	pushl	$0x0
	pushl	$0x17
	jmp	isr_common_stub

_isr24:
	cli
	pushl	$0x0
	pushl	$0x18
	jmp	isr_common_stub

_isr25:
	cli
	pushl	$0x0
	pushl	$0x19
	jmp	isr_common_stub

_isr26:
	cli
	pushl	$0x0
	pushl	$0x1a
	jmp	isr_common_stub

_isr27:
	cli
	pushl	$0x0
	pushl	$0x1b
	jmp	isr_common_stub

_isr28:
	cli
	pushl	$0x0
	pushl	$0x1c
	jmp	isr_common_stub

_isr29:
	cli
	pushl	$0x0
	pushl	$0x1d
	jmp	isr_common_stub

_isr30:
	cli
	pushl	$0x0
	pushl	$0x1e
	jmp	isr_common_stub

_isr31:
	cli
	pushl	$0x0
	pushl	$0x1f
	jmp	isr_common_stub

isr_common_stub:
	pushal
	pushl	%ds
	pushl	%es
	pushl	%fs
	pushl	%gs
	movw	$0x10, %ax
	movl	%eax, %ds
	movl	%eax, %es
	movl	%eax, %fs
	movl	%eax, %gs
	movl	%esp, %eax
	pushl	%eax
	movl	$0x0, %eax
	calll	*%eax
	popl	%eax
	popl	%gs
	popl	%fs
	popl	%es
	popl	%ds
	popal
	addl	$0x8, %esp
	iretl

_irq0:
	cli
	pushl	$0x0
	pushl	$0x20
	jmp	irq_common_stub

_irq1:
	cli
	pushl	$0x0
	pushl	$0x21
	jmp	irq_common_stub

_irq2:
	cli
	pushl	$0x0
	pushl	$0x22
	jmp	irq_common_stub

_irq3:
	cli
	pushl	$0x0
	pushl	$0x23
	jmp	irq_common_stub

_irq4:
	cli
	pushl	$0x0
	pushl	$0x24
	jmp	irq_common_stub

_irq5:
	cli
	pushl	$0x0
	pushl	$0x25
	jmp	irq_common_stub

_irq6:
	cli
	pushl	$0x0
	pushl	$0x26
	jmp	irq_common_stub

_irq7:
	cli
	pushl	$0x0
	pushl	$0x27
	jmp	0x1e8 <irq_common_stub>

_irq8:
	cli
	pushl	$0x0
	pushl	$0x28
	jmp	irq_common_stub

_irq9:
	cli
	pushl	$0x0
	pushl	$0x29
	jmp	irq_common_stub

_irq10:
	cli
	pushl	$0x0
	pushl	$0x2a
	jmp	irq_common_stub

_irq11:
	cli
	pushl	$0x0
	pushl	$0x2b
	jmp	irq_common_stub

_irq12:
	cli
	pushl	$0x0
	pushl	$0x2c
	jmp	irq_common_stub

_irq13:
	cli
	pushl	$0x0
	pushl	$0x2d
	jmp	irq_common_stub

_irq14:
	cli
	pushl	$0x0
	pushl	$0x2e
	jmp	irq_common_stub

_irq15:
	cli
	pushl	$0x0
	pushl	$0x2f
	jmp	irq_common_stub

irq_common_stub:
	pushal
	pushl	%ds
	pushl	%es
	pushl	%fs
	pushl	%gs
	movw	$0x10, %ax
	movl	%eax, %ds
	movl	%eax, %es
	movl	%eax, %fs
	movl	%eax, %gs
	movl	%esp, %eax
	pushl	%eax
	movl	$0x0, %eax
	calll	*%eax
	popl	%eax
	popl	%gs
	popl	%fs
	popl	%es
	popl	%ds
	popal
	addl	$0x8, %esp
	iretl
