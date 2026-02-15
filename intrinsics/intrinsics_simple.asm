	.file	"intrinsics_simple.cpp"
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
.LFB10396:
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
.LFE10396:
	.size	_Z10cpu_warmupv, .-_Z10cpu_warmupv
	.p2align 4
	.globl	_Z7my_funcPfS_S_ii
	.type	_Z7my_funcPfS_S_ii, @function
_Z7my_funcPfS_S_ii:
.LFB10398:
	.cfi_startproc
	endbr64
	mov	r9, rsi
	test	ecx, ecx
	jle	.L27
	movsx	r10, r8d
	xor	eax, eax
	xor	esi, esi
	sal	r10, 2
	.p2align 4,,10
	.p2align 3
.L25:
	vmovaps	ymm1, YMMWORD PTR [r9+rax]
	vaddps	ymm0, ymm1, YMMWORD PTR [rdx+rax]
	add	esi, r8d
	vaddps	ymm0, ymm0, YMMWORD PTR [rdi+rax]
	vmovaps	YMMWORD PTR [rdi+rax], ymm0
	add	rax, r10
	cmp	ecx, esi
	jg	.L25
	vzeroupper
.L27:
	ret
	.cfi_endproc
.LFE10398:
	.size	_Z7my_funcPfS_S_ii, .-_Z7my_funcPfS_S_ii
	.section	.rodata.str1.1
.LC7:
	.string	"PERF_START\n"
.LC8:
	.string	"PERF_STOP\n"
	.text
	.p2align 4
	.globl	_Z12measure_loopPfS_S_i
	.type	_Z12measure_loopPfS_S_i, @function
_Z12measure_loopPfS_S_i:
.LFB10399:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	.cfi_offset 15, -24
	lea	r15, _ZSt4cout[rip]
	push	r14
	.cfi_offset 14, -32
	mov	r14, rsi
	lea	rsi, .LC7[rip]
	push	r13
	.cfi_offset 13, -40
	mov	r13, rdx
	mov	edx, 11
	push	r12
	.cfi_offset 12, -48
	mov	r12d, ecx
	push	rbx
	.cfi_offset 3, -56
	mov	rbx, rdi
	mov	rdi, r15
	and	rsp, -32
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	edx, 100
	test	r12d, r12d
	jle	.L30
	.p2align 4,,10
	.p2align 3
.L29:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L31:
	vmovaps	ymm1, YMMWORD PTR [r14+rax*4]
	vaddps	ymm0, ymm1, YMMWORD PTR 0[r13+rax*4]
	vaddps	ymm0, ymm0, YMMWORD PTR [rbx+rax*4]
	vmovaps	YMMWORD PTR [rbx+rax*4], ymm0
	add	rax, 8
	cmp	r12d, eax
	jg	.L31
	sub	edx, 1
	jne	.L29
	vzeroupper
.L30:
	lea	rsp, -40[rbp]
	mov	rdi, r15
	mov	edx, 10
	pop	rbx
	lea	rsi, .LC8[rip]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_def_cfa 7, 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.cfi_endproc
.LFE10399:
	.size	_Z12measure_loopPfS_S_i, .-_Z12measure_loopPfS_S_i
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB11161:
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
.LFE11161:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z4initPfii
	.type	_Z4initPfii, @function
_Z4initPfii:
.LFB10397:
	.cfi_startproc
	endbr64
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sub	rsp, 4096
	.cfi_def_cfa_offset 4128
	or	QWORD PTR [rsp], 0
	sub	rsp, 912
	.cfi_def_cfa_offset 5040
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 5000[rsp], rax
	xor	eax, eax
	mov	ecx, edx
	mov	rbx, rsp
	mov	edx, 1
	mov	QWORD PTR [rsp], rcx
	.p2align 4,,10
	.p2align 3
.L47:
	mov	rax, rcx
	shr	rax, 30
	xor	rax, rcx
	imul	rax, rax, 1812433253
	lea	ecx, [rax+rdx]
	mov	QWORD PTR [rbx+rdx*8], rcx
	add	rdx, 1
	cmp	rdx, 624
	jne	.L47
	mov	QWORD PTR 4992[rsp], 624
	test	esi, esi
	jle	.L46
	movsx	rsi, esi
	vxorps	xmm4, xmm4, xmm4
	mov	rbp, rdi
	vmovss	xmm3, DWORD PTR .LC21[rip]
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm5, DWORD PTR .LC22[rip]
	lea	r12, [rdi+rsi*4]
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L61:
	vcvtsi2ss	xmm0, xmm4, rax
.L51:
	vxorps	xmm2, xmm2, xmm2
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L52
	vmulss	xmm0, xmm0, xmm5
	add	rbp, 4
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR -4[rbp], xmm0
	cmp	r12, rbp
	je	.L46
.L53:
	mov	rdx, rcx
.L55:
	cmp	rdx, 623
	ja	.L60
.L49:
	mov	rax, QWORD PTR [rsp+rdx*8]
	lea	rcx, 1[rdx]
	mov	QWORD PTR 4992[rsp], rcx
	mov	rdx, rax
	shr	rdx, 11
	mov	edx, edx
	xor	rax, rdx
	mov	rdx, rax
	sal	rdx, 7
	and	edx, 2636928640
	xor	rax, rdx
	mov	rdx, rax
	sal	rdx, 15
	and	edx, 4022730752
	xor	rax, rdx
	mov	rdx, rax
	shr	rdx, 18
	xor	rax, rdx
	jns	.L61
	mov	rdx, rax
	and	eax, 1
	shr	rdx
	or	rdx, rax
	vcvtsi2ss	xmm0, xmm4, rdx
	vaddss	xmm0, xmm0, xmm0
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L60:
	mov	rdi, rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rdx, QWORD PTR 4992[rsp]
	vmovss	xmm5, DWORD PTR .LC22[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC2[rip]
	vmovss	xmm3, DWORD PTR .LC21[rip]
	jmp	.L49
.L52:
	mov	DWORD PTR 0[rbp], 0x411fffff
	add	rbp, 4
	cmp	rbp, r12
	jne	.L53
.L46:
	mov	rax, QWORD PTR 5000[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L62
	add	rsp, 5008
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
.L62:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10397:
	.size	_Z4initPfii, .-_Z4initPfii
	.section	.rodata.str1.1
.LC24:
	.string	"avg time: "
.LC26:
	.string	"sum = %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB10400:
	.cfi_startproc
	endbr64
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	mov	edx, 400000000
	mov	esi, 32
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xor	ebx, ebx
	sub	rsp, 16
	.cfi_def_cfa_offset 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	mov	rbp, rsp
	mov	rdi, rbp
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L64
	mov	rbx, QWORD PTR [rsp]
.L64:
	mov	edx, 100000000
	xor	esi, esi
	mov	rdi, rbx
	xor	r12d, r12d
	call	memset@PLT
	mov	edx, 400000000
	mov	esi, 32
	mov	rdi, rbp
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L65
	mov	r12, QWORD PTR [rsp]
.L65:
	mov	rdi, rbp
	mov	edx, 400000000
	mov	esi, 32
	xor	ebp, ebp
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L66
	mov	rbp, QWORD PTR [rsp]
.L66:
	mov	edx, 123
	mov	esi, 100000000
	mov	rdi, r12
	call	_Z4initPfii
	mov	edx, 321
	mov	rdi, rbp
	mov	esi, 100000000
	call	_Z4initPfii
	lea	r14, _ZSt4cout[rip]
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	ecx, 100000000
	mov	rdx, rbp
	mov	rsi, r12
	mov	rdi, rbx
	mov	r13, rax
	call	_Z12measure_loopPfS_S_i
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	rdi, r14
	lea	rsi, .LC24[rip]
	movabs	rdx, 4835703278458516699
	sub	rax, r13
	mov	rcx, rax
	imul	rdx
	sar	rcx, 63
	sar	rdx, 18
	sub	rdx, rcx
	mov	r13, rdx
	mov	edx, 10
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	rdi, r14
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, r13
	vdivsd	xmm0, xmm0, QWORD PTR .LC25[rip]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	r13, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	r14, QWORD PTR 240[r13+rax]
	test	r14, r14
	je	.L80
	cmp	BYTE PTR 56[r14], 0
	je	.L69
	movzx	eax, BYTE PTR 67[r14]
.L70:
	movsx	esi, al
	mov	rdi, r13
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	mov	rax, rbx
	lea	rdx, 400000000[rbx]
	vxorps	xmm0, xmm0, xmm0
	.p2align 4,,10
	.p2align 3
.L71:
	vaddss	xmm0, xmm0, DWORD PTR [rax]
	add	rax, 32
	vaddss	xmm0, xmm0, DWORD PTR -28[rax]
	vaddss	xmm0, xmm0, DWORD PTR -24[rax]
	vaddss	xmm0, xmm0, DWORD PTR -20[rax]
	vaddss	xmm0, xmm0, DWORD PTR -16[rax]
	vaddss	xmm0, xmm0, DWORD PTR -12[rax]
	vaddss	xmm0, xmm0, DWORD PTR -8[rax]
	vaddss	xmm0, xmm0, DWORD PTR -4[rax]
	cmp	rdx, rax
	jne	.L71
	lea	rsi, .LC26[rip]
	mov	edi, 2
	mov	eax, 1
	vcvtss2sd	xmm0, xmm0, xmm0
	call	__printf_chk@PLT
	mov	rdi, rbx
	call	free@PLT
	mov	rdi, r12
	call	free@PLT
	mov	rdi, rbp
	call	free@PLT
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L79
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.L69:
	.cfi_restore_state
	mov	rdi, r14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR [r14]
	mov	esi, 10
	mov	rdi, r14
	call	[QWORD PTR 48[rax]]
	jmp	.L70
.L80:
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L79
	call	_ZSt16__throw_bad_castv@PLT
.L79:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10400:
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
.LC21:
	.long	796917760
	.align 4
.LC22:
	.long	1091567616
	.section	.rodata.cst8
	.align 8
.LC25:
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
