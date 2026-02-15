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
	.section	.rodata.str1.1
.LC7:
	.string	"PERF_START\n"
.LC8:
	.string	"PERF_STOP\n"
	.text
	.p2align 4
	.globl	_Z12measure_loopP13array_elementi
	.type	_Z12measure_loopP13array_elementi, @function
_Z12measure_loopP13array_elementi:
.LFB10370:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	edx, 11
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	.cfi_offset 13, -24
	lea	r13, _ZSt4cout[rip]
	push	r12
	.cfi_offset 12, -32
	mov	r12d, esi
	lea	rsi, .LC7[rip]
	push	rbx
	.cfi_offset 3, -40
	mov	rbx, rdi
	mov	rdi, r13
	and	rsp, -32
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsx	rax, r12d
	test	rax, rax
	je	.L32
	lea	rcx, [rax+rax*2]
	mov	rdx, rbx
	sal	rcx, 5
	add	rcx, rbx
	.p2align 4,,10
	.p2align 3
.L34:
	vmovaps	ymm2, YMMWORD PTR [rdx]
	vaddps	ymm1, ymm2, YMMWORD PTR 32[rdx]
	mov	eax, 50
	vmovaps	ymm0, YMMWORD PTR 64[rdx]
	.p2align 4,,10
	.p2align 3
.L33:
	vaddps	ymm0, ymm1, ymm0
	vaddps	ymm0, ymm0, ymm1
	sub	eax, 1
	jne	.L33
	vmovaps	YMMWORD PTR 64[rdx], ymm0
	add	rdx, 96
	cmp	rdx, rcx
	jne	.L34
	vzeroupper
.L32:
	lea	rsp, -24[rbp]
	mov	rdi, r13
	mov	edx, 10
	pop	rbx
	lea	rsi, .LC8[rip]
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.cfi_endproc
.LFE10370:
	.size	_Z12measure_loopP13array_elementi, .-_Z12measure_loopP13array_elementi
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB11132:
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
.L42:
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
	jne	.L42
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
	vpbroadcastq	ymm3, QWORD PTR .LC17[rip]
	vpand	xmm0, xmm0, xmm2
	mov	QWORD PTR 1808[rdx], rax
	mov	eax, 2567483615
	vpbroadcastq	ymm2, QWORD PTR .LC18[rip]
	vpxor	xmm0, xmm1, xmm0
	vmovq	xmm7, rax
	vpbroadcastq	ymm1, QWORD PTR .LC19[rip]
	vmovdqu	XMMWORD PTR 1792[rdx], xmm0
	vpbroadcastq	ymm0, xmm7
.L43:
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
	jne	.L43
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
.LFE11132:
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
.L47:
	mov	rax, rdi
	shr	rax, 30
	xor	rax, rdi
	imul	rax, rax, 1812433253
	lea	edi, [rax+rsi]
	mov	QWORD PTR [rbx+rsi*8], rdi
	add	rsi, 1
	cmp	rsi, 624
	jne	.L47
	mov	esi, 321
	mov	r12d, 1
	mov	QWORD PTR 5024[rsp], 624
	lea	r15, 5040[rsp]
	mov	QWORD PTR 5040[rsp], 321
	.p2align 4,,10
	.p2align 3
.L48:
	mov	rax, rsi
	shr	rax, 30
	xor	rax, rsi
	imul	rax, rax, 1812433253
	lea	esi, [rax+r12]
	mov	QWORD PTR [r15+r12*8], rsi
	add	r12, 1
	cmp	r12, 624
	jne	.L48
	cmp	QWORD PTR 24[rsp], 0
	mov	QWORD PTR 10032[rsp], 624
	je	.L46
	vmovss	xmm3, DWORD PTR .LC22[rip]
	vxorps	xmm4, xmm4, xmm4
	lea	rbp, 32[rcx]
	mov	QWORD PTR 16[rsp], 0
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm5, DWORD PTR .LC23[rip]
	mov	r14d, 624
	.p2align 4,,10
	.p2align 3
.L50:
	lea	r13, -32[rbp]
	mov	rsi, r14
	vxorps	xmm2, xmm2, xmm2
	mov	rax, r12
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L73:
	vcvtsi2ss	xmm0, xmm4, rax
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L63
.L74:
	vmulss	xmm0, xmm0, xmm5
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR 0[r13], xmm0
	cmp	r14, 623
	ja	.L71
.L55:
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
	js	.L56
	vcvtsi2ss	xmm0, xmm4, rax
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L58
.L75:
	vmulss	xmm0, xmm0, xmm5
	mov	DWORD PTR 64[r13], 0x00000000
	add	r13, 4
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR 28[r13], xmm0
	cmp	r13, rbp
	je	.L60
.L59:
	mov	rsi, r14
	mov	rax, r12
.L61:
	cmp	r12, 623
	ja	.L72
.L51:
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
	jns	.L73
	mov	rdi, rax
	and	eax, 1
	shr	rdi
	or	rdi, rax
	vcvtsi2ss	xmm0, xmm4, rdi
	vaddss	xmm0, xmm0, xmm0
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jb	.L74
.L63:
	vmovss	xmm0, DWORD PTR .LC20[rip]
	vmovss	DWORD PTR 0[r13], xmm0
	cmp	r14, 623
	jbe	.L55
	.p2align 4,,10
	.p2align 3
.L71:
	mov	rdi, r15
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rsi, QWORD PTR 10032[rsp]
	vmovss	xmm5, DWORD PTR .LC23[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm3, DWORD PTR .LC22[rip]
	vxorps	xmm2, xmm2, xmm2
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L56:
	mov	rsi, rax
	and	eax, 1
	shr	rsi
	or	rsi, rax
	vcvtsi2ss	xmm0, xmm4, rsi
	vaddss	xmm0, xmm0, xmm0
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jb	.L75
.L58:
	mov	DWORD PTR 32[r13], 0x411fffff
	add	r13, 4
	mov	DWORD PTR 60[r13], 0x00000000
	cmp	r13, rbp
	jne	.L59
	.p2align 4,,10
	.p2align 3
.L60:
	add	QWORD PTR 16[rsp], 1
	add	rbp, 96
	mov	rax, QWORD PTR 16[rsp]
	cmp	QWORD PTR 24[rsp], rax
	jne	.L50
.L46:
	mov	rax, QWORD PTR 10040[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L76
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
.L72:
	.cfi_restore_state
	mov	rdi, rbx
	mov	QWORD PTR 8[rsp], rsi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rax, QWORD PTR 5024[rsp]
	vmovss	xmm5, DWORD PTR .LC23[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm3, DWORD PTR .LC22[rip]
	vxorps	xmm2, xmm2, xmm2
	mov	rsi, QWORD PTR 8[rsp]
	jmp	.L51
.L76:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10368:
	.size	_Z4initP13array_elementm, .-_Z4initP13array_elementm
	.section	.rodata.str1.1
.LC24:
	.string	"nullptr\n"
.LC25:
	.string	"avg time: "
.LC27:
	.string	"sum = %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB10371:
	.cfi_startproc
	endbr64
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	mov	edx, 1200000000
	mov	esi, 32
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 24
	.cfi_def_cfa_offset 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	mov	rdi, rsp
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L79
	mov	rbp, QWORD PTR [rsp]
	test	rbp, rbp
	je	.L79
	mov	esi, 12500000
	mov	rdi, rbp
	mov	ebx, eax
	call	_Z4initP13array_elementm
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	esi, 12500000
	mov	rdi, rbp
	mov	r12, rax
	call	_Z12measure_loopP13array_elementi
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	ecx, 1000000
	lea	rsi, .LC25[rip]
	sub	rax, r12
	lea	r12, _ZSt4cout[rip]
	cqo
	mov	rdi, r12
	idiv	rcx
	mov	edx, 10
	mov	r13, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	rdi, r12
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, r13
	vdivsd	xmm0, xmm0, QWORD PTR .LC26[rip]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	r12, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	r13, QWORD PTR 240[r12+rax]
	test	r13, r13
	je	.L91
	cmp	BYTE PTR 56[r13], 0
	je	.L84
	movzx	eax, BYTE PTR 67[r13]
.L85:
	movsx	esi, al
	mov	rdi, r12
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	lea	rax, 64[rbp]
	lea	rdx, 1199999968[rbp]
	vxorps	xmm0, xmm0, xmm0
	.p2align 4,,10
	.p2align 3
.L86:
	vaddss	xmm0, xmm0, DWORD PTR [rax]
	add	rax, 96
	vaddss	xmm0, xmm0, DWORD PTR -92[rax]
	vaddss	xmm0, xmm0, DWORD PTR -88[rax]
	vaddss	xmm0, xmm0, DWORD PTR -84[rax]
	vaddss	xmm0, xmm0, DWORD PTR -80[rax]
	vaddss	xmm0, xmm0, DWORD PTR -76[rax]
	vaddss	xmm0, xmm0, DWORD PTR -72[rax]
	vaddss	xmm0, xmm0, DWORD PTR -68[rax]
	cmp	rdx, rax
	jne	.L86
	vaddss	xmm0, xmm0, DWORD PTR 1199999968[rbp]
	mov	edi, 2
	mov	eax, 1
	vaddss	xmm0, xmm0, DWORD PTR 1199999972[rbp]
	vaddss	xmm0, xmm0, DWORD PTR 1199999976[rbp]
	vaddss	xmm0, xmm0, DWORD PTR 1199999980[rbp]
	vaddss	xmm0, xmm0, DWORD PTR 1199999984[rbp]
	vaddss	xmm0, xmm0, DWORD PTR 1199999988[rbp]
	vaddss	xmm0, xmm0, DWORD PTR 1199999992[rbp]
	vaddss	xmm0, xmm0, DWORD PTR 1199999996[rbp]
	lea	rsi, .LC27[rip]
	vcvtss2sd	xmm0, xmm0, xmm0
	call	__printf_chk@PLT
	mov	rdi, rbp
	call	free@PLT
	jmp	.L77
.L79:
	lea	rsi, .LC24[rip]
	mov	edi, 2
	xor	eax, eax
	mov	ebx, 1
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L77:
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L90
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	mov	eax, ebx
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
.L84:
	.cfi_restore_state
	mov	rdi, r13
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR 0[r13]
	mov	esi, 10
	mov	rdi, r13
	call	[QWORD PTR 48[rax]]
	jmp	.L85
.L91:
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L90
	call	_ZSt16__throw_bad_castv@PLT
.L90:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10371:
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
.LC17:
	.quad	-2147483648
	.align 8
.LC18:
	.quad	2147483647
	.align 8
.LC19:
	.quad	1
	.section	.rodata.cst4
	.align 4
.LC20:
	.long	1092616191
	.align 4
.LC22:
	.long	796917760
	.align 4
.LC23:
	.long	1091567616
	.section	.rodata.cst8
	.align 8
.LC26:
	.long	0
	.long	1079574528
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
