	.file	"A-2.c"
	.text
	.comm	Z,4,4
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	Z(%rip), %eax
	movl	%eax, -4(%rbp)
	cmpl	$9, -4(%rbp)
	jg	.L2
	movl	$5, -12(%rbp)
	movl	$17, -8(%rbp)
	jmp	.L3
.L2:
	movl	$6, -12(%rbp)
	movl	$20, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L3
	movl	$0, -8(%rbp)
.L3:
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, Z(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
