	.file	"A-4.c"
	.text
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
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -20(%rbp)
	movl	$2, -16(%rbp)
	movl	$3, -12(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L2
.L3:
	movl	-44(%rbp), %eax
	cltq
	movl	-20(%rbp,%rax,4), %edx
	movl	-44(%rbp), %eax
	cltq
	movl	%edx, -32(%rbp,%rax,4)
	addl	$1, -44(%rbp)
.L2:
	cmpl	$2, -44(%rbp)
	jle	.L3
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	$5, (%rax)
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
