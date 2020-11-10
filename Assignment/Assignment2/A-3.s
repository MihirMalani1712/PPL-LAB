	.file	"A-3.c"
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
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	sall	-12(%rbp)
.L2:
	cmpl	$99, -12(%rbp)
	jle	.L3
	movl	$0, -8(%rbp)
	jmp	.L4
.L7:
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
.L5:
	cmpl	$49, -4(%rbp)
	jle	.L6
	addl	$1, -8(%rbp)
.L4:
	cmpl	$24, -8(%rbp)
	jle	.L7
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
