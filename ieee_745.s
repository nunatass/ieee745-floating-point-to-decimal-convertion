	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI0_0:
	.long	1065353216              ## float 1
LCPI0_2:
	.long	3212836864              ## float -1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_1:
	.quad	4611686018427387904     ## double 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rcx, %rsi
	movl	$16, %edx
	callq	_strtol
	movss	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-20(%rbp), %edx
	andl	$-2147483648, %edx      ## imm = 0x80000000
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	shrl	$31, %edx
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %edx
	andl	$2139095040, %edx       ## imm = 0x7F800000
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	shll	$1, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	shrl	$24, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %edx
	subl	$127, %edx
	movl	%edx, -32(%rbp)
	movl	-20(%rbp), %edx
	andl	$8388607, %edx          ## imm = 0x7FFFFF
	movl	%edx, -40(%rbp)
	movl	$4194304, -44(%rbp)     ## imm = 0x400000
	movl	$1, -48(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$23, -48(%rbp)
	jg	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	andl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	$23, %ecx
	subl	-48(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -44(%rbp)
	movss	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	imull	$4294967295, -48(%rbp), %eax ## imm = 0xFFFFFFFF
	cvtsi2sdl	%eax, %xmm2
	movsd	LCPI0_1(%rip), %xmm3    ## xmm3 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -72(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	_pow
	movsd	-72(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movsd	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	callq	_pow
	movss	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	cmpl	$0, -28(%rbp)
	jne	LBB0_6
## %bb.5:
	movss	-36(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)        ## 4-byte Spill
	jmp	LBB0_7
LBB0_6:
	movss	LCPI0_2(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)        ## 4-byte Spill
LBB0_7:
	movss	-76(%rbp), %xmm0        ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f\n"


.subsections_via_symbols
