.global gdt_flush
.global idt_load
.global irq_install

.global isr0
.global isr1
.global isr2
.global isr3
.global isr4
.global isr5
.global isr6
.global isr7
.global isr8
.global isr9
.global isr10
.global isr11
.global isr12
.global isr13
.global isr14
.global isr15
.global isr16
.global isr17
.global isr18
.global isr19
.global isr20
.global isr21
.global isr22
.global isr23
.global isr24
.global isr25
.global isr26
.global isr27
.global isr28
.global isr29
.global isr30
.global isr31

.global irq0
.global irq1
.global irq2
.global irq3
.global irq4
.global irq5
.global irq6
.global irq7
.global irq8
.global irq9
.global irq10
.global irq11
.global irq12
.global irq13
.global irq14
.global irq15

.global start

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
	#call _main
	jmp stublet

gdt_flush:
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

idt_load:
	lidtl	0x0
	retl

isr0:
	cli
	pushl	$0x0
	pushl	$0x0
	jmp	isr_common_stub

isr1:
	cli
	pushl	$0x0
	pushl	$0x1
	jmp	isr_common_stub

isr2:
	cli
	pushl	$0x0
	pushl	$0x2
	jmp	isr_common_stub

isr3:
	cli
	pushl	$0x0
	pushl	$0x3
	jmp	isr_common_stub

isr4:
	cli
	pushl	$0x0
	pushl	$0x4
	jmp	isr_common_stub

isr5:
	cli
	pushl	$0x0
	pushl	$0x5
	jmp	isr_common_stub

isr6:
	cli
	pushl	$0x0
	pushl	$0x6
	jmp	isr_common_stub

isr7:
	cli
	pushl	$0x0
	pushl	$0x7
	jmp	isr_common_stub

isr8:
	cli
	pushl	$0x8
	jmp	isr_common_stub

isr9:
	cli
	pushl	$0x0
	pushl	$0x9
	jmp	isr_common_stub

isr10:
	cli
	pushl	$0xa
	jmp	isr_common_stub

isr11:
	cli
	pushl	$0xb
	jmp	isr_common_stub

isr12:
	cli
	pushl	$0xc
	jmp	isr_common_stub

isr13:
	cli
	pushl	$0xd
	jmp	isr_common_stub

isr14:
	cli
	pushl	$0xe
	jmp	isr_common_stub

isr15:
	cli
	pushl	$0x0
	pushl	$0xf
	jmp	isr_common_stub

isr16:
	cli
	pushl	$0x0
	pushl	$0x10
	jmp	isr_common_stub

isr17:
	cli
	pushl	$0x0
	pushl	$0x11
	jmp	isr_common_stub

isr18:
	cli
	pushl	$0x0
	pushl	$0x12
	jmp	isr_common_stub

isr19:
	cli
	pushl	$0x0
	pushl	$0x13
	jmp	isr_common_stub

isr20:
	cli
	pushl	$0x0
	pushl	$0x14
	jmp	isr_common_stub

isr21:
	cli
	pushl	$0x0
	pushl	$0x15
	jmp	isr_common_stub

isr22:
	cli
	pushl	$0x0
	pushl	$0x16
	jmp	isr_common_stub

isr23:
	cli
	pushl	$0x0
	pushl	$0x17
	jmp	isr_common_stub

isr24:
	cli
	pushl	$0x0
	pushl	$0x18
	jmp	isr_common_stub

isr25:
	cli
	pushl	$0x0
	pushl	$0x19
	jmp	isr_common_stub

isr26:
	cli
	pushl	$0x0
	pushl	$0x1a
	jmp	isr_common_stub

isr27:
	cli
	pushl	$0x0
	pushl	$0x1b
	jmp	isr_common_stub

isr28:
	cli
	pushl	$0x0
	pushl	$0x1c
	jmp	isr_common_stub

isr29:
	cli
	pushl	$0x0
	pushl	$0x1d
	jmp	isr_common_stub

isr30:
	cli
	pushl	$0x0
	pushl	$0x1e
	jmp	isr_common_stub

isr31:
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
	movl	_fault_handler, %eax
	calll	*%eax
	popl	%eax
	popl	%gs
	popl	%fs
	popl	%es
	popl	%ds
	popal
	addl	$0x8, %esp
	iretl

irq0:
	cli
	pushl	$0x0
	pushl	$0x20
	jmp	irq_common_stub

irq1:
	cli
	pushl	$0x0
	pushl	$0x21
	jmp	irq_common_stub

irq2:
	cli
	pushl	$0x0
	pushl	$0x22
	jmp	irq_common_stub

irq3:
	cli
	pushl	$0x0
	pushl	$0x23
	jmp	irq_common_stub

irq4:
	cli
	pushl	$0x0
	pushl	$0x24
	jmp	irq_common_stub

irq5:
	cli
	pushl	$0x0
	pushl	$0x25
	jmp	irq_common_stub

irq6:
	cli
	pushl	$0x0
	pushl	$0x26
	jmp	irq_common_stub

irq7:
	cli
	pushl	$0x0
	pushl	$0x27
	jmp	irq_common_stub

irq8:
	cli
	pushl	$0x0
	pushl	$0x28
	jmp	irq_common_stub

irq9:
	cli
	pushl	$0x0
	pushl	$0x29
	jmp	irq_common_stub

irq10:
	cli
	pushl	$0x0
	pushl	$0x2a
	jmp	irq_common_stub

irq11:
	cli
	pushl	$0x0
	pushl	$0x2b
	jmp	irq_common_stub

irq12:
	cli
	pushl	$0x0
	pushl	$0x2c
	jmp	irq_common_stub

irq13:
	cli
	pushl	$0x0
	pushl	$0x2d
	jmp	irq_common_stub

irq14:
	cli
	pushl	$0x0
	pushl	$0x2e
	jmp	irq_common_stub

irq15:
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
