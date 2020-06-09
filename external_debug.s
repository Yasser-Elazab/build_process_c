	.file	"external.c"
	.text
	.globl	_EXTERNAL_u64Pow2
	.def	_EXTERNAL_u64Pow2;	.scl	2;	.type	32;	.endef
_EXTERNAL_u64Pow2:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	imull	%eax, %eax
	movl	$0, %edx
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC Build-20200227-1) 9.2.0"
