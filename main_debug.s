	.file	"main.c"
	.text
	.globl	_MAIN_u8TestConstVar
	.section .rdata,"dr"
_MAIN_u8TestConstVar:
	.byte	6
	.def	___main;	.scl	2;	.type	32;	.endef
	.align 4
LC0:
	.ascii "hello world!, this is test code 3\0"
LC1:
	.ascii "we are in debug mode folks!!\0"
LC2:
	.ascii "this is the test number: %u,\12\0"
	.align 4
LC3:
	.ascii "this is the const test number suqared: %lu\12\0"
	.align 4
LC5:
	.ascii "and this is the const test number cubed: %lu\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$LC0, (%esp)
	call	_puts
	movl	$LC1, (%esp)
	call	_puts
	movl	$8, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$6, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_EXTERNAL_u64Pow2
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$6, %eax
	movzbl	%al, %eax
	movw	%ax, 16(%esp)
	filds	16(%esp)
	fldl	LC4
	fstpl	8(%esp)
	fstpl	(%esp)
	call	_pow
	fnstcw	30(%esp)
	movzwl	30(%esp), %eax
	orb	$12, %ah
	movw	%ax, 28(%esp)
	fldcw	28(%esp)
	fistpq	16(%esp)
	fldcw	30(%esp)
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 8
LC4:
	.long	0
	.long	1074266112
	.ident	"GCC: (MinGW.org GCC Build-20200227-1) 9.2.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_EXTERNAL_u64Pow2;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
