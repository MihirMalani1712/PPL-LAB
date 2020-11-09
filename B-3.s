	.file	"B-3.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d%d"
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
	subq	$16, %rsp
	movl	$4, -8(%rbp)
	jmp	.L2
.L5:
	cmpl	$3, -8(%rbp)
	jg	.L3
	addl	$2, -4(%rbp)
	jmp	.L4
.L3:
	sall	-4(%rbp)
.L4:
	addl	$1, -8(%rbp)
.L2:
	cmpl	$99, -8(%rbp)
	jle	.L5
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
