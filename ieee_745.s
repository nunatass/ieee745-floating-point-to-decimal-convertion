	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4611686018427387904     ## double 2
LCPI0_1:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_2:
	.long	3212836864              ## float -1
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
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB0_2
## %bb.1:
	xorl	%edi, %edi
	callq	_exit
LBB0_2:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movl	$16, %edx
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-20(%rbp), %eax
	andl	$-2147483648, %eax      ## imm = 0x80000000
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	andl	$2139095040, %eax       ## imm = 0x7F800000
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	$127, %eax
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	andl	$8388607, %eax          ## imm = 0x7FFFFF
	movl	%eax, -48(%rbp)
	movl	$4194304, -52(%rbp)     ## imm = 0x400000
	movl	$1, -56(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$23, -56(%rbp)
	jg	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-48(%rbp), %eax
	andl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	$23, %ecx
	subl	-56(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -52(%rbp)
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	imull	$4294967295, -56(%rbp), %eax ## imm = 0xFFFFFFFF
	cvtsi2sd	%eax, %xmm2
	movsd	LCPI0_0(%rip), %xmm3    ## xmm3 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        ## 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -80(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	_pow
	movsd	-80(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_3
LBB0_6:
	cmpl	$128, -40(%rbp)
	jne	LBB0_9
## %bb.7:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	LBB0_9
## %bb.8:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB0_23
LBB0_9:
	cmpl	$128, -40(%rbp)
	jne	LBB0_13
## %bb.10:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	LBB0_13
	jp	LBB0_13
## %bb.11:
	cmpl	$0, -36(%rbp)
	jne	LBB0_13
## %bb.12:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB0_22
LBB0_13:
	cmpl	$128, -40(%rbp)
	jne	LBB0_17
## %bb.14:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	LBB0_17
	jp	LBB0_17
## %bb.15:
	cmpl	$0, -36(%rbp)
	je	LBB0_17
## %bb.16:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB0_21
LBB0_17:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	LCPI0_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sd	%rcx, %xmm1
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	callq	_pow
	mulsd	-32(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-44(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str.3(%rip), %rdi
	movb	$1, %al
	callq	_printf
	cmpl	$0, -36(%rbp)
	jne	LBB0_19
## %bb.18:
	movss	-44(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)        ## 4-byte Spill
	jmp	LBB0_20
LBB0_19:
	movss	LCPI0_2(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)        ## 4-byte Spill
LBB0_20:
	movss	-84(%rbp), %xmm0        ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
LBB0_21:
	jmp	LBB0_22
LBB0_22:
	jmp	LBB0_23
LBB0_23:
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"NaN\n"

L_.str.1:                               ## @.str.1
	.asciz	"INF\n"

L_.str.2:                               ## @.str.2
	.asciz	"-INF\n"

L_.str.3:                               ## @.str.3
	.asciz	"%f\n"


.subsections_via_symbols
