	.file	"intrinsics_continuous.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB11168:
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
.L2:
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
	jne	.L2
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
	vpbroadcastq	ymm3, QWORD PTR .LC8[rip]
	vpand	xmm0, xmm0, xmm2
	mov	QWORD PTR 1808[rdx], rax
	mov	eax, 2567483615
	vpbroadcastq	ymm2, QWORD PTR .LC9[rip]
	vpxor	xmm0, xmm1, xmm0
	vmovq	xmm7, rax
	vpbroadcastq	ymm1, QWORD PTR .LC10[rip]
	vmovdqu	XMMWORD PTR 1792[rdx], xmm0
	vpbroadcastq	ymm0, xmm7
.L3:
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
	jne	.L3
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
.LFE11168:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z4initPfi
	.type	_Z4initPfi, @function
_Z4initPfi:
.LFB10367:
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
	mov	edx, 1
	mov	DWORD PTR 28[rsp], esi
	mov	r12, rdi
	lea	rbx, 32[rsp]
	mov	edi, 123
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 10040[rsp], rax
	xor	eax, eax
	mov	QWORD PTR 32[rsp], 123
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rax, rdi
	shr	rax, 30
	xor	rax, rdi
	imul	rax, rax, 1812433253
	lea	edi, [rax+rdx]
	mov	QWORD PTR [rbx+rdx*8], rdi
	add	rdx, 1
	cmp	rdx, 624
	jne	.L8
	mov	edx, 321
	mov	r14d, 1
	mov	QWORD PTR 5024[rsp], 624
	lea	rbp, 5040[rsp]
	mov	QWORD PTR 5040[rsp], 321
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rax, rdx
	shr	rax, 30
	xor	rax, rdx
	imul	rax, rax, 1812433253
	lea	edx, [rax+r14]
	mov	QWORD PTR 0[rbp+r14*8], rdx
	add	r14, 1
	cmp	r14, 624
	jne	.L9
	mov	QWORD PTR 10032[rsp], 624
	mov	eax, DWORD PTR 28[rsp]
	test	eax, eax
	jle	.L7
	mov	DWORD PTR 24[rsp], 7
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm3, DWORD PTR .LC12[rip]
	mov	r13d, 624
	mov	QWORD PTR 16[rsp], 0
	vmovss	xmm1, DWORD PTR .LC13[rip]
	vxorps	xmm2, xmm2, xmm2
	mov	DWORD PTR 12[rsp], 15
	.p2align 4,,10
	.p2align 3
.L10:
	mov	r15, QWORD PTR 16[rsp]
	mov	rax, r14
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L34:
	vcvtsi2ss	xmm0, xmm4, rax
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L15
.L35:
	vmulss	xmm0, xmm0, DWORD PTR .LC14[rip]
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR [r12+r15*4], xmm0
	add	r15, 1
	cmp	DWORD PTR 24[rsp], r15d
	jl	.L17
.L16:
	mov	rax, r14
.L25:
	cmp	r14, 623
	ja	.L33
.L12:
	lea	r14, 1[rax]
	mov	rax, QWORD PTR 32[rsp+rax*8]
	mov	QWORD PTR 5024[rsp], r14
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
	jns	.L34
	mov	rdi, rax
	and	eax, 1
	shr	rdi
	or	rdi, rax
	vcvtsi2ss	xmm0, xmm4, rdi
	vaddss	xmm0, xmm0, xmm0
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jb	.L35
.L15:
	mov	DWORD PTR [r12+r15*4], 0x411fffff
	add	r15, 1
	cmp	DWORD PTR 24[rsp], r15d
	jge	.L16
	.p2align 4,,10
	.p2align 3
.L17:
	mov	rax, QWORD PTR 16[rsp]
	lea	r15, 8[rax]
	.p2align 4,,10
	.p2align 3
.L32:
	mov	rax, r13
	cmp	r13, 623
	ja	.L36
.L18:
	lea	r13, 1[rax]
	mov	rax, QWORD PTR 5040[rsp+rax*8]
	mov	QWORD PTR 10032[rsp], r13
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
	js	.L19
	vcvtsi2ss	xmm0, xmm4, rax
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L21
.L38:
	vmulss	xmm0, xmm0, DWORD PTR .LC14[rip]
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR [r12+r15*4], xmm0
	add	r15, 1
	cmp	DWORD PTR 12[rsp], r15d
	jge	.L32
.L23:
	add	QWORD PTR 16[rsp], 24
	mov	rax, QWORD PTR 16[rsp]
	add	DWORD PTR 12[rsp], 24
	add	DWORD PTR 24[rsp], 24
	cmp	DWORD PTR 28[rsp], eax
	jg	.L10
.L7:
	mov	rax, QWORD PTR 10040[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L37
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
.L33:
	.cfi_restore_state
	mov	rdi, rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	xmm4, xmm4, xmm4
	vxorps	xmm2, xmm2, xmm2
	mov	rax, QWORD PTR 5024[rsp]
	vmovss	xmm1, DWORD PTR .LC13[rip]
	vmovss	xmm3, DWORD PTR .LC12[rip]
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L19:
	mov	rdi, rax
	and	eax, 1
	shr	rdi
	or	rdi, rax
	vcvtsi2ss	xmm0, xmm4, rdi
	vaddss	xmm0, xmm0, xmm0
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jb	.L38
.L21:
	mov	DWORD PTR [r12+r15*4], 0x411fffff
	add	r15, 1
	cmp	DWORD PTR 12[rsp], r15d
	jl	.L23
	mov	rax, r13
	cmp	r13, 623
	jbe	.L18
	.p2align 4,,10
	.p2align 3
.L36:
	mov	rdi, rbp
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	xmm4, xmm4, xmm4
	vxorps	xmm2, xmm2, xmm2
	mov	rax, QWORD PTR 10032[rsp]
	vmovss	xmm1, DWORD PTR .LC13[rip]
	vmovss	xmm3, DWORD PTR .LC12[rip]
	jmp	.L18
.L37:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10367:
	.size	_Z4initPfi, .-_Z4initPfi
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC16:
	.string	"basic_string: construction from null is not valid"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"basic_string::append"
.LC18:
	.string	".txt"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB19:
	.section	.text.startup,"ax",@progbits
.LHOTB19:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB10368:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10368
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	rbx, rsi
	and	rsp, -32
	sub	rsp, 608
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 600[rsp], rax
	xor	eax, eax
	lea	r12, 80[rsp]
	lea	r14, 32[rsp]
	mov	rdi, r12
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev@PLT
.LEHE0:
	mov	r15, QWORD PTR [rbx]
	mov	QWORD PTR 16[rsp], r14
	test	r15, r15
	je	.L78
	mov	rdi, r15
	lea	r13, 16[rsp]
	call	strlen@PLT
	mov	QWORD PTR 8[rsp], rax
	mov	rbx, rax
	cmp	rax, 15
	ja	.L79
	cmp	rax, 1
	jne	.L44
	movzx	eax, BYTE PTR [r15]
	mov	BYTE PTR 32[rsp], al
.L45:
	mov	rax, QWORD PTR 8[rsp]
	mov	rdx, QWORD PTR 16[rsp]
	lea	rbx, 48[rsp]
	mov	rdi, rbx
	mov	QWORD PTR 24[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
	mov	r14, QWORD PTR 24[rsp]
	lea	rax, 64[rsp]
	mov	QWORD PTR 48[rsp], rax
	mov	r15, QWORD PTR 16[rsp]
	lea	rsi, 4[r14]
	mov	BYTE PTR 64[rsp], 0
	mov	QWORD PTR 56[rsp], 0
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
	movabs	rax, 4611686018427387903
	sub	rax, QWORD PTR 56[rsp]
	cmp	rax, r14
	jb	.L80
	mov	rdx, r14
	mov	rsi, r15
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	movabs	rax, 4611686018427387903
	sub	rax, QWORD PTR 56[rsp]
	cmp	rax, 3
	jbe	.L81
	mov	edx, 4
	lea	rsi, .LC18[rip]
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE1:
	mov	rsi, QWORD PTR 48[rsp]
	lea	rdi, 88[rsp]
	mov	edx, 17
.LEHB2:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	mov	rdx, QWORD PTR 80[rsp]
	mov	rdi, QWORD PTR -24[rdx]
	add	rdi, r12
	test	rax, rax
	je	.L82
	xor	esi, esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE2:
.L54:
	mov	rdi, rbx
	xor	ebx, ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	lea	rdi, 8[rsp]
	mov	edx, 1200000000
	mov	esi, 32
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L55
	mov	rbx, QWORD PTR 8[rsp]
.L55:
	mov	esi, 300000000
	mov	rdi, rbx
	call	_Z4initPfi
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	lea	rdx, 1200000000[rbx]
	mov	r14, rax
	mov	rax, rbx
	.p2align 4,,10
	.p2align 3
.L56:
	vmovaps	ymm1, YMMWORD PTR [rax]
	vaddps	ymm0, ymm1, YMMWORD PTR 32[rax]
	add	rax, 96
	vmovaps	YMMWORD PTR -32[rax], ymm0
	cmp	rdx, rax
	jne	.L56
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	rdi, r12
	movabs	rdx, 4835703278458516699
	sub	rax, r14
	mov	rcx, rax
	imul	rdx
	sar	rcx, 63
	sar	rdx, 18
	mov	rsi, rdx
	sub	rsi, rcx
.LEHB3:
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	mov	r14, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	r15, QWORD PTR 240[r14+rax]
	test	r15, r15
	je	.L83
	cmp	BYTE PTR 56[r15], 0
	je	.L59
	movzx	eax, BYTE PTR 67[r15]
.L60:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	mov	rdi, rbx
	call	free@PLT
	mov	rdi, r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, r12
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 600[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L75
	lea	rsp, -40[rbp]
	xor	eax, eax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L44:
	.cfi_restore_state
	test	rax, rax
	je	.L45
	mov	rdi, r14
	jmp	.L43
.L59:
	mov	rdi, r15
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR [r15]
	mov	esi, 10
	mov	rdi, r15
	call	[QWORD PTR 48[rax]]
.LEHE3:
	jmp	.L60
.L79:
	lea	rsi, 8[rsp]
	xor	edx, edx
	mov	rdi, r13
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE4:
	mov	QWORD PTR 16[rsp], rax
	mov	rdi, rax
	mov	rax, QWORD PTR 8[rsp]
	mov	QWORD PTR 32[rsp], rax
.L43:
	mov	rdx, rbx
	mov	rsi, r15
	call	memcpy@PLT
	jmp	.L45
.L82:
	mov	esi, DWORD PTR 32[rdi]
	or	esi, 4
.LEHB5:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE5:
	jmp	.L54
.L80:
	mov	rax, QWORD PTR 600[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L75
	lea	rdi, .LC17[rip]
.LEHB6:
	call	_ZSt20__throw_length_errorPKc@PLT
.L81:
	mov	rax, QWORD PTR 600[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L75
	lea	rdi, .LC17[rip]
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE6:
.L83:
	mov	rax, QWORD PTR 600[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L75
.LEHB7:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE7:
.L75:
	call	__stack_chk_fail@PLT
.L78:
	mov	rax, QWORD PTR 600[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L75
	lea	rdi, .LC16[rip]
.LEHB8:
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE8:
.L66:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L62
.L68:
	endbr64
	mov	r14, rax
	vzeroupper
	jmp	.L52
.L69:
	endbr64
	mov	r14, rax
	jmp	.L51
.L67:
	endbr64
	mov	r14, rax
	jmp	.L61
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA10368:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10368-.LLSDACSB10368
.LLSDACSB10368:
	.uleb128 .LEHB0-.LFB10368
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10368
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L69-.LFB10368
	.uleb128 0
	.uleb128 .LEHB2-.LFB10368
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L67-.LFB10368
	.uleb128 0
	.uleb128 .LEHB3-.LFB10368
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L68-.LFB10368
	.uleb128 0
	.uleb128 .LEHB4-.LFB10368
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L66-.LFB10368
	.uleb128 0
	.uleb128 .LEHB5-.LFB10368
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L67-.LFB10368
	.uleb128 0
	.uleb128 .LEHB6-.LFB10368
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L69-.LFB10368
	.uleb128 0
	.uleb128 .LEHB7-.LFB10368
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L68-.LFB10368
	.uleb128 0
	.uleb128 .LEHB8-.LFB10368
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L66-.LFB10368
	.uleb128 0
.LLSDACSE10368:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC10368
	.type	main.cold, @function
main.cold:
.LFSB10368:
.L51:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	mov	rdi, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L52:
	mov	rdi, r13
	mov	rbx, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L62:
	mov	rdi, r12
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 600[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L84
	mov	rdi, rbx
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L84:
	call	__stack_chk_fail@PLT
.L61:
	mov	rdi, rbx
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L52
	.cfi_endproc
.LFE10368:
	.section	.gcc_except_table
.LLSDAC10368:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC10368-.LLSDACSBC10368
.LLSDACSBC10368:
	.uleb128 .LEHB9-.LCOLDB19
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC10368:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE19:
	.section	.text.startup
.LHOTE19:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.quad	-2147483648
	.align 8
.LC9:
	.quad	2147483647
	.align 8
.LC10:
	.quad	1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC12:
	.long	796917760
	.align 4
.LC13:
	.long	1065353216
	.align 4
.LC14:
	.long	1091567616
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
