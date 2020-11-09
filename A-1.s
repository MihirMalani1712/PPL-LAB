	.file	"A-1.c"
	.text
	.comm	Z,4,4
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$6, -20(%rbp)
	movl	$10, -16(%rbp)
	movl	$20, -12(%rbp)
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	$25, %eax
	movl	%eax, -8(%rbp)
	movl	$6, -20(%rbp)
	movl	Z(%rip), %eax
	movl	%eax, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
