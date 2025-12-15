	.file	"intrinsics_structure.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"--- Start warmup ---\n"
.LC6:
	.string	"--- Warmup complete ---\n"
#NO_APP
	.text
	.p2align 4
	.globl	_Z10cpu_warmupv
	.type	_Z10cpu_warmupv, @function
_Z10cpu_warmupv:
.LFB10367:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	lea	rsi, .LC0[rip]
	mov	edi, 2
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	call	__printf_chk@PLT
	mov	rdi, rsp
	mov	edx, 104857600
	mov	esi, 32
	call	posix_memalign@PLT
	xor	edx, edx
	xor	edi, edi
	test	eax, eax
	jne	.L3
	mov	rdi, QWORD PTR [rsp]
	mov	rdx, rdi
.L3:
	vbroadcastss	ymm0, DWORD PTR .LC2[rip]
	lea	rcx, 104857600[rdx]
	mov	rax, rdx
.L5:
	vmovups	YMMWORD PTR [rax], ymm0
	add	rax, 64
	vmovups	YMMWORD PTR -32[rax], ymm0
	cmp	rax, rcx
	jne	.L5
	vmovss	xmm2, DWORD PTR .LC4[rip]
	vmovss	xmm1, DWORD PTR .LC5[rip]
	lea	rcx, 104857600[rdx]
.L9:
	vmovss	xmm0, DWORD PTR [rdx]
	mov	eax, 50
	.p2align 4,,10
	.p2align 3
.L10:
	vmulss	xmm0, xmm0, xmm2
	vaddss	xmm0, xmm0, xmm1
	vmulss	xmm0, xmm0, xmm2
	vaddss	xmm0, xmm0, xmm1
	sub	eax, 1
	jne	.L10
	vmovss	DWORD PTR [rdx], xmm0
	add	rdx, 4
	cmp	rcx, rdx
	jne	.L9
	vmovss	xmm0, DWORD PTR [rdi]
	vmovss	DWORD PTR [rsp], xmm0
	vmovss	xmm0, DWORD PTR [rsp]
	vzeroupper
	call	free@PLT
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L22
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	lea	rsi, .LC6[rip]
	mov	edi, 2
	xor	eax, eax
	jmp	__printf_chk@PLT
.L22:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10367:
	.size	_Z10cpu_warmupv, .-_Z10cpu_warmupv
	.p2align 4
	.globl	_Z7my_funcP13array_elementm
	.type	_Z7my_funcP13array_elementm, @function
_Z7my_funcP13array_elementm:
.LFB10369:
	.cfi_startproc
	endbr64
	test	rsi, rsi
	je	.L30
	lea	rax, [rsi+rsi*2]
	sal	rax, 5
	add	rax, rdi
	.p2align 4,,10
	.p2align 3
.L25:
	vmovaps	ymm1, YMMWORD PTR [rdi]
	vaddps	ymm0, ymm1, YMMWORD PTR 32[rdi]
	add	rdi, 96
	vaddps	ymm0, ymm0, YMMWORD PTR -32[rdi]
	vmovaps	YMMWORD PTR -32[rdi], ymm0
	cmp	rax, rdi
	jne	.L25
	vzeroupper
.L30:
	ret
	.cfi_endproc
.LFE10369:
	.size	_Z7my_funcP13array_elementm, .-_Z7my_funcP13array_elementm
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB11131:
	.cfi_startproc
	endbr64
	mov	rdx, rdi
	lea	rcx, 1792[rdi]
	vpxor	xmm7, xmm7, xmm7
	mov	rax, rdi
	mov	rdi, -2147483648
	vmovq	xmm0, rdi
	mov	edi, 2147483647
	vmovq	xmm1, rdi
	mov	edi, 1
	vpbroadcastq	ymm10, xmm0
	vmovq	xmm2, rdi
	mov	edi, 2567483615
	vpbroadcastq	ymm9, xmm1
	vmovq	xmm3, rdi
	vpbroadcastq	ymm8, xmm2
	vpbroadcastq	ymm6, xmm3
	.p2align 4,,10
	.p2align 3
.L32:
	vpand	ymm5, ymm9, YMMWORD PTR 8[rax]
	vpand	ymm4, ymm10, YMMWORD PTR [rax]
	add	rax, 32
	vpor	ymm4, ymm4, ymm5
	vpsrlq	ymm5, ymm4, 1
	vpand	ymm4, ymm4, ymm8
	vpxor	ymm5, ymm5, YMMWORD PTR 3144[rax]
	vpsubq	ymm4, ymm7, ymm4
	vpand	ymm4, ymm4, ymm6
	vpxor	ymm4, ymm5, ymm4
	vmovdqu	YMMWORD PTR -32[rax], ymm4
	cmp	rcx, rax
	jne	.L32
	mov	rax, QWORD PTR 1808[rdx]
	vpunpcklqdq	xmm0, xmm0, xmm0
	vpunpcklqdq	xmm1, xmm1, xmm1
	vpunpcklqdq	xmm2, xmm2, xmm2
	mov	rcx, QWORD PTR 1816[rdx]
	vpand	xmm1, xmm1, XMMWORD PTR 1800[rdx]
	vpxor	xmm6, xmm6, xmm6
	lea	rsi, 4984[rdx]
	and	rax, -2147483648
	vpand	xmm0, xmm0, XMMWORD PTR 1792[rdx]
	and	ecx, 2147483647
	or	rax, rcx
	vpor	xmm0, xmm0, xmm1
	mov	rcx, rax
	vpsrlq	xmm1, xmm0, 1
	vpand	xmm0, xmm0, xmm2
	and	eax, 1
	neg	rax
	vpxor	xmm2, xmm2, xmm2
	shr	rcx
	xor	rcx, QWORD PTR 4984[rdx]
	and	eax, 2567483615
	vpxor	xmm1, xmm1, XMMWORD PTR 4968[rdx]
	vpsubq	xmm0, xmm2, xmm0
	xor	rax, rcx
	vpunpcklqdq	xmm2, xmm3, xmm3
	lea	rcx, 1816[rdx]
	vpbroadcastq	ymm3, QWORD PTR .LC15[rip]
	vpand	xmm0, xmm0, xmm2
	mov	QWORD PTR 1808[rdx], rax
	mov	eax, 2567483615
	vpbroadcastq	ymm2, QWORD PTR .LC16[rip]
	vpxor	xmm0, xmm1, xmm0
	vmovq	xmm7, rax
	vpbroadcastq	ymm1, QWORD PTR .LC17[rip]
	vmovdqu	XMMWORD PTR 1792[rdx], xmm0
	vpbroadcastq	ymm0, xmm7
.L33:
	vpand	ymm5, ymm2, YMMWORD PTR 8[rcx]
	vpand	ymm4, ymm3, YMMWORD PTR [rcx]
	add	rcx, 32
	vpor	ymm4, ymm4, ymm5
	vpsrlq	ymm5, ymm4, 1
	vpand	ymm4, ymm4, ymm1
	vpxor	ymm5, ymm5, YMMWORD PTR -1848[rcx]
	vpsubq	ymm4, ymm6, ymm4
	vpand	ymm4, ymm4, ymm0
	vpxor	ymm4, ymm5, ymm4
	vmovdqu	YMMWORD PTR -32[rcx], ymm4
	cmp	rsi, rcx
	jne	.L33
	mov	rax, QWORD PTR 4984[rdx]
	mov	rcx, QWORD PTR [rdx]
	mov	QWORD PTR 4992[rdx], 0
	and	ecx, 2147483647
	and	rax, -2147483648
	or	rax, rcx
	mov	rcx, rax
	and	eax, 1
	neg	rax
	shr	rcx
	xor	rcx, QWORD PTR 3168[rdx]
	and	eax, 2567483615
	xor	rax, rcx
	mov	QWORD PTR 4984[rdx], rax
	vzeroupper
	ret
	.cfi_endproc
.LFE11131:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z4initP13array_elementm
	.type	_Z4initP13array_elementm, @function
_Z4initP13array_elementm:
.LFB10368:
	.cfi_startproc
	endbr64
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 4096
	.cfi_def_cfa_offset 4152
	or	QWORD PTR [rsp], 0
	sub	rsp, 4096
	.cfi_def_cfa_offset 8248
	or	QWORD PTR [rsp], 0
	sub	rsp, 1864
	.cfi_def_cfa_offset 10112
	mov	QWORD PTR 24[rsp], rsi
	mov	rcx, rdi
	mov	esi, 1
	mov	edi, 123
	lea	rbx, 32[rsp]
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 10040[rsp], rax
	xor	eax, eax
	mov	QWORD PTR 32[rsp], 123
	.p2align 4,,10
	.p2align 3
.L37:
	mov	rax, rdi
	shr	rax, 30
	xor	rax, rdi
	imul	rax, rax, 1812433253
	lea	edi, [rax+rsi]
	mov	QWORD PTR [rbx+rsi*8], rdi
	add	rsi, 1
	cmp	rsi, 624
	jne	.L37
	mov	esi, 321
	mov	r12d, 1
	mov	QWORD PTR 5024[rsp], 624
	lea	r15, 5040[rsp]
	mov	QWORD PTR 5040[rsp], 321
	.p2align 4,,10
	.p2align 3
.L38:
	mov	rax, rsi
	shr	rax, 30
	xor	rax, rsi
	imul	rax, rax, 1812433253
	lea	esi, [rax+r12]
	mov	QWORD PTR [r15+r12*8], rsi
	add	r12, 1
	cmp	r12, 624
	jne	.L38
	cmp	QWORD PTR 24[rsp], 0
	mov	QWORD PTR 10032[rsp], 624
	je	.L36
	vmovss	xmm3, DWORD PTR .LC20[rip]
	vxorps	xmm4, xmm4, xmm4
	lea	rbp, 32[rcx]
	mov	QWORD PTR 16[rsp], 0
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm5, DWORD PTR .LC21[rip]
	mov	r14d, 624
	.p2align 4,,10
	.p2align 3
.L40:
	lea	r13, -32[rbp]
	mov	rsi, r14
	vxorps	xmm2, xmm2, xmm2
	mov	rax, r12
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L63:
	vcvtsi2ss	xmm0, xmm4, rax
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L53
.L64:
	vmulss	xmm0, xmm0, xmm5
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR 0[r13], xmm0
	cmp	r14, 623
	ja	.L61
.L45:
	mov	rax, QWORD PTR 5040[rsp+rsi*8]
	lea	r14, 1[rsi]
	mov	QWORD PTR 10032[rsp], r14
	mov	rsi, rax
	shr	rsi, 11
	mov	esi, esi
	xor	rax, rsi
	mov	rsi, rax
	sal	rsi, 7
	and	esi, 2636928640
	xor	rax, rsi
	mov	rsi, rax
	sal	rsi, 15
	and	esi, 4022730752
	xor	rax, rsi
	mov	rsi, rax
	shr	rsi, 18
	xor	rax, rsi
	js	.L46
	vcvtsi2ss	xmm0, xmm4, rax
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L48
.L65:
	vmulss	xmm0, xmm0, xmm5
	mov	DWORD PTR 64[r13], 0x00000000
	add	r13, 4
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR 28[r13], xmm0
	cmp	r13, rbp
	je	.L50
.L49:
	mov	rsi, r14
	mov	rax, r12
.L51:
	cmp	r12, 623
	ja	.L62
.L41:
	lea	r12, 1[rax]
	mov	rax, QWORD PTR 32[rsp+rax*8]
	mov	QWORD PTR 5024[rsp], r12
	mov	rdi, rax
	shr	rdi, 11
	mov	edi, edi
	xor	rax, rdi
	mov	rdi, rax
	sal	rdi, 7
	and	edi, 2636928640
	xor	rax, rdi
	mov	rdi, rax
	sal	rdi, 15
	and	edi, 4022730752
	xor	rax, rdi
	mov	rdi, rax
	shr	rdi, 18
	xor	rax, rdi
	jns	.L63
	mov	rdi, rax
	and	eax, 1
	shr	rdi
	or	rdi, rax
	vcvtsi2ss	xmm0, xmm4, rdi
	vaddss	xmm0, xmm0, xmm0
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jb	.L64
.L53:
	vmovss	xmm0, DWORD PTR .LC18[rip]
	vmovss	DWORD PTR 0[r13], xmm0
	cmp	r14, 623
	jbe	.L45
	.p2align 4,,10
	.p2align 3
.L61:
	mov	rdi, r15
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rsi, QWORD PTR 10032[rsp]
	vmovss	xmm5, DWORD PTR .LC21[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm3, DWORD PTR .LC20[rip]
	vxorps	xmm2, xmm2, xmm2
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	mov	rsi, rax
	and	eax, 1
	shr	rsi
	or	rsi, rax
	vcvtsi2ss	xmm0, xmm4, rsi
	vaddss	xmm0, xmm0, xmm0
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jb	.L65
.L48:
	mov	DWORD PTR 32[r13], 0x411fffff
	add	r13, 4
	mov	DWORD PTR 60[r13], 0x00000000
	cmp	r13, rbp
	jne	.L49
	.p2align 4,,10
	.p2align 3
.L50:
	add	QWORD PTR 16[rsp], 1
	add	rbp, 96
	mov	rax, QWORD PTR 16[rsp]
	cmp	QWORD PTR 24[rsp], rax
	jne	.L40
.L36:
	mov	rax, QWORD PTR 10040[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L66
	add	rsp, 10056
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore_state
	mov	rdi, rbx
	mov	QWORD PTR 8[rsp], rsi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rax, QWORD PTR 5024[rsp]
	vmovss	xmm5, DWORD PTR .LC21[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm3, DWORD PTR .LC20[rip]
	vxorps	xmm2, xmm2, xmm2
	mov	rsi, QWORD PTR 8[rsp]
	jmp	.L41
.L66:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10368:
	.size	_Z4initP13array_elementm, .-_Z4initP13array_elementm
	.section	.rodata.str1.1
.LC22:
	.string	"nullptr\n"
.LC23:
	.string	"avg time: "
.LC25:
	.string	"sum = %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB10370:
	.cfi_startproc
	endbr64
	lea	r10, 8[rsp]
	.cfi_def_cfa 10, 0
	and	rsp, -32
	mov	edx, 1200000000
	mov	esi, 32
	push	QWORD PTR -8[r10]
	push	rbp
	mov	rbp, rsp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	push	r14
	push	r13
	lea	rdi, -64[rbp]
	push	r12
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	push	rbx
	sub	rsp, 40
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L69
	mov	r12, QWORD PTR -64[rbp]
	test	r12, r12
	je	.L69
	mov	esi, 12500000
	mov	rdi, r12
	mov	ebx, eax
	call	_Z4initP13array_elementm
	lea	r13, 1200000000[r12]
	call	_Z10cpu_warmupv
	mov	rax, r12
.L72:
	vmovaps	ymm2, YMMWORD PTR [rax]
	vaddps	ymm0, ymm2, YMMWORD PTR 32[rax]
	add	rax, 96
	vaddps	ymm0, ymm0, YMMWORD PTR -32[rax]
	vmovaps	YMMWORD PTR -32[rax], ymm0
	cmp	rax, r13
	jne	.L72
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	rdx, r12
	mov	r14, rax
.L73:
	vmovaps	ymm3, YMMWORD PTR [rdx]
	vaddps	ymm1, ymm3, YMMWORD PTR 32[rdx]
	mov	eax, 5
	vmovaps	ymm0, YMMWORD PTR 64[rdx]
	.p2align 4,,10
	.p2align 3
.L74:
	vaddps	ymm0, ymm1, ymm0
	vaddps	ymm0, ymm0, ymm1
	sub	eax, 1
	jne	.L74
	vmovaps	YMMWORD PTR 64[rdx], ymm0
	add	rdx, 96
	cmp	r13, rdx
	jne	.L73
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	ecx, 1000000
	lea	rsi, .LC23[rip]
	sub	rax, r14
	lea	r14, _ZSt4cout[rip]
	cqo
	mov	rdi, r14
	idiv	rcx
	mov	edx, 10
	mov	r13, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	rdi, r14
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, r13
	vdivsd	xmm0, xmm0, QWORD PTR .LC24[rip]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	r14, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	r13, QWORD PTR 240[r14+rax]
	test	r13, r13
	je	.L87
	cmp	BYTE PTR 56[r13], 0
	je	.L78
	movzx	eax, BYTE PTR 67[r13]
.L79:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	lea	rax, 64[r12]
	vxorps	xmm0, xmm0, xmm0
	lea	rdx, 1199999968[r12]
	.p2align 4,,10
	.p2align 3
.L80:
	vaddss	xmm0, xmm0, DWORD PTR [rax]
	add	rax, 96
	vaddss	xmm0, xmm0, DWORD PTR -92[rax]
	vaddss	xmm0, xmm0, DWORD PTR -88[rax]
	vaddss	xmm0, xmm0, DWORD PTR -84[rax]
	vaddss	xmm0, xmm0, DWORD PTR -80[rax]
	vaddss	xmm0, xmm0, DWORD PTR -76[rax]
	vaddss	xmm0, xmm0, DWORD PTR -72[rax]
	vaddss	xmm0, xmm0, DWORD PTR -68[rax]
	cmp	rax, rdx
	jne	.L80
	vaddss	xmm0, xmm0, DWORD PTR 1199999968[r12]
	mov	edi, 2
	mov	eax, 1
	vaddss	xmm0, xmm0, DWORD PTR 1199999972[r12]
	lea	rsi, .LC25[rip]
	vaddss	xmm0, xmm0, DWORD PTR 1199999976[r12]
	vaddss	xmm0, xmm0, DWORD PTR 1199999980[r12]
	vaddss	xmm0, xmm0, DWORD PTR 1199999984[r12]
	vaddss	xmm0, xmm0, DWORD PTR 1199999988[r12]
	vaddss	xmm0, xmm0, DWORD PTR 1199999992[r12]
	vaddss	xmm0, xmm0, DWORD PTR 1199999996[r12]
	vcvtss2sd	xmm0, xmm0, xmm0
	call	__printf_chk@PLT
	mov	rdi, r12
	call	free@PLT
	jmp	.L67
.L69:
	lea	rsi, .LC22[rip]
	mov	edi, 2
	xor	eax, eax
	mov	ebx, 1
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L67:
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L86
	add	rsp, 40
	mov	eax, ebx
	pop	rbx
	pop	r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	lea	rsp, -8[r10]
	.cfi_def_cfa 7, 8
	ret
.L78:
	.cfi_restore_state
	mov	rdi, r13
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR 0[r13]
	mov	esi, 10
	mov	rdi, r13
	call	[QWORD PTR 48[rax]]
	jmp	.L79
.L87:
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L86
	call	_ZSt16__throw_bad_castv@PLT
.L86:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10370:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC4:
	.long	1065353217
	.align 4
.LC5:
	.long	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC15:
	.quad	-2147483648
	.align 8
.LC16:
	.quad	2147483647
	.align 8
.LC17:
	.quad	1
	.section	.rodata.cst4
	.align 4
.LC18:
	.long	1092616191
	.align 4
.LC20:
	.long	796917760
	.align 4
.LC21:
	.long	1091567616
	.section	.rodata.cst8
	.align 8
.LC24:
	.long	0
	.long	1076101120
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
