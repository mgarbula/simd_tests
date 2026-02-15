	.file	"simple.cpp"
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
.LFB5286:
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
.LFE5286:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z4initPfii
	.type	_Z4initPfii, @function
_Z4initPfii:
.LFB4484:
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
.L8:
	mov	rax, rcx
	shr	rax, 30
	xor	rax, rcx
	imul	rax, rax, 1812433253
	lea	ecx, [rax+rdx]
	mov	QWORD PTR [rbx+rdx*8], rcx
	add	rdx, 1
	cmp	rdx, 624
	jne	.L8
	mov	QWORD PTR 4992[rsp], 624
	test	esi, esi
	jle	.L7
	movsx	rsi, esi
	vxorps	xmm4, xmm4, xmm4
	mov	rbp, rdi
	vmovss	xmm3, DWORD PTR .LC12[rip]
	vmovss	xmm1, DWORD PTR .LC13[rip]
	vmovss	xmm5, DWORD PTR .LC14[rip]
	lea	r12, [rdi+rsi*4]
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L22:
	vcvtsi2ss	xmm0, xmm4, rax
.L12:
	vxorps	xmm2, xmm2, xmm2
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L13
	vmulss	xmm0, xmm0, xmm5
	add	rbp, 4
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR -4[rbp], xmm0
	cmp	r12, rbp
	je	.L7
.L14:
	mov	rdx, rcx
.L16:
	cmp	rdx, 623
	ja	.L21
.L10:
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
	jns	.L22
	mov	rdx, rax
	and	eax, 1
	shr	rdx
	or	rdx, rax
	vcvtsi2ss	xmm0, xmm4, rdx
	vaddss	xmm0, xmm0, xmm0
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L21:
	mov	rdi, rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rdx, QWORD PTR 4992[rsp]
	vmovss	xmm5, DWORD PTR .LC14[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC13[rip]
	vmovss	xmm3, DWORD PTR .LC12[rip]
	jmp	.L10
.L13:
	mov	DWORD PTR 0[rbp], 0x411fffff
	add	rbp, 4
	cmp	rbp, r12
	jne	.L14
.L7:
	mov	rax, QWORD PTR 5000[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L23
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
.L23:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4484:
	.size	_Z4initPfii, .-_Z4initPfii
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC16:
	.string	"basic_string: construction from null is not valid"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"basic_string::append"
.LC18:
	.string	".txt"
.LC19:
	.string	"time: "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB20:
	.section	.text.startup,"ax",@progbits
.LHOTB20:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4485:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4485
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
	sub	rsp, 640
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 632[rsp], rax
	xor	eax, eax
	lea	rax, 112[rsp]
	lea	r13, 64[rsp]
	mov	rdi, rax
	mov	QWORD PTR 24[rsp], rax
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev@PLT
.LEHE0:
	mov	r12, QWORD PTR [rbx]
	lea	rax, 48[rsp]
	mov	QWORD PTR 48[rsp], r13
	mov	QWORD PTR 16[rsp], rax
	test	r12, r12
	je	.L81
	mov	rdi, r12
	call	strlen@PLT
	mov	QWORD PTR 40[rsp], rax
	mov	rbx, rax
	cmp	rax, 15
	ja	.L82
	cmp	rax, 1
	jne	.L29
	movzx	eax, BYTE PTR [r12]
	mov	BYTE PTR 64[rsp], al
	jmp	.L30
.L29:
	test	rax, rax
	jne	.L83
.L30:
	mov	rax, QWORD PTR 40[rsp]
	mov	rdx, QWORD PTR 48[rsp]
	lea	r12, 80[rsp]
	mov	rdi, r12
	mov	QWORD PTR 56[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
	mov	rbx, QWORD PTR 56[rsp]
	lea	rax, 96[rsp]
	mov	QWORD PTR 80[rsp], rax
	mov	r13, QWORD PTR 48[rsp]
	lea	rsi, 4[rbx]
	mov	BYTE PTR 96[rsp], 0
	mov	QWORD PTR 88[rsp], 0
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
	movabs	rax, 4611686018427387903
	sub	rax, QWORD PTR 88[rsp]
	cmp	rax, rbx
	jb	.L84
	mov	rdx, rbx
	mov	rsi, r13
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	movabs	rax, 4611686018427387903
	sub	rax, QWORD PTR 88[rsp]
	cmp	rax, 3
	jbe	.L85
	mov	edx, 4
	lea	rsi, .LC18[rip]
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE1:
	mov	rsi, QWORD PTR 80[rsp]
	lea	rdi, 120[rsp]
	mov	edx, 17
.LEHB2:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	mov	rdx, QWORD PTR 112[rsp]
	mov	rdi, QWORD PTR 24[rsp]
	add	rdi, QWORD PTR -24[rdx]
	test	rax, rax
	je	.L86
	xor	esi, esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE2:
.L39:
	mov	rdi, r12
	lea	rbx, 40[rsp]
	xor	r13d, r13d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	edx, 400000000
	mov	esi, 32
	mov	rdi, rbx
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L40
	mov	r13, QWORD PTR 40[rsp]
.L40:
	mov	edx, 400000000
	mov	esi, 32
	mov	rdi, rbx
	xor	r12d, r12d
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L41
	mov	r12, QWORD PTR 40[rsp]
.L41:
	mov	rdi, rbx
	mov	edx, 400000000
	mov	esi, 32
	xor	ebx, ebx
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L42
	mov	rbx, QWORD PTR 40[rsp]
.L42:
	mov	edx, 123
	mov	esi, 100000000
	mov	rdi, r12
	call	_Z4initPfii
	mov	edx, 321
	mov	esi, 100000000
	mov	rdi, rbx
	call	_Z4initPfii
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	lea	rdx, 4[r12]
	mov	r14, rax
	mov	rax, r13
	sub	rax, rdx
	cmp	rax, 24
	jbe	.L65
	lea	rdx, 4[rbx]
	mov	rax, r13
	sub	rax, rdx
	mov	edx, 100
	cmp	rax, 24
	jbe	.L65
.L43:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L46:
	vmovups	ymm1, YMMWORD PTR [r12+rax]
	vaddps	ymm0, ymm1, YMMWORD PTR [rbx+rax]
	vmovups	YMMWORD PTR 0[r13+rax], ymm0
	add	rax, 32
	cmp	rax, 400000000
	jne	.L46
	sub	edx, 1
	jne	.L43
	vzeroupper
.L47:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	lea	rsi, .LC19[rip]
	movabs	rdx, 4835703278458516699
	sub	rax, r14
	lea	r14, _ZSt4cout[rip]
	mov	rcx, rax
	imul	rdx
	mov	rdi, r14
	sar	rcx, 63
	sar	rdx, 18
	sub	rdx, rcx
	mov	r15, rdx
	mov	edx, 6
.LEHB3:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	rsi, r15
	mov	rdi, r14
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	mov	r15, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	r14, QWORD PTR 240[r15+rax]
	test	r14, r14
	je	.L87
	cmp	BYTE PTR 56[r14], 0
	je	.L51
	movzx	eax, BYTE PTR 67[r14]
.L52:
	movsx	esi, al
	mov	rdi, r15
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
.LEHE3:
	mov	rdi, r13
	call	free@PLT
	mov	rdi, r12
	call	free@PLT
	mov	rdi, rbx
	call	free@PLT
	mov	rdi, QWORD PTR 16[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, QWORD PTR 24[rsp]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 632[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L78
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
.L86:
	.cfi_restore_state
	mov	esi, DWORD PTR 32[rdi]
	or	esi, 4
.LEHB4:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE4:
	jmp	.L39
.L51:
	mov	rdi, r14
.LEHB5:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR [r14]
	mov	esi, 10
	mov	rdi, r14
	call	[QWORD PTR 48[rax]]
.LEHE5:
	jmp	.L52
.L82:
	mov	rdi, QWORD PTR 16[rsp]
	lea	rsi, 40[rsp]
	xor	edx, edx
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	mov	QWORD PTR 48[rsp], rax
	mov	rdi, rax
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR 64[rsp], rax
.L28:
	mov	rdx, rbx
	mov	rsi, r12
	call	memcpy@PLT
	jmp	.L30
.L65:
	mov	edx, 100
.L45:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L48:
	vmovss	xmm0, DWORD PTR [r12+rax]
	vaddss	xmm0, xmm0, DWORD PTR [rbx+rax]
	vmovss	DWORD PTR 0[r13+rax], xmm0
	add	rax, 4
	cmp	rax, 400000000
	jne	.L48
	sub	edx, 1
	jne	.L45
	jmp	.L47
.L81:
	mov	rax, QWORD PTR 632[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L78
	lea	rdi, .LC16[rip]
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE6:
.L83:
	mov	rdi, r13
	jmp	.L28
.L84:
	mov	rax, QWORD PTR 632[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L78
	lea	rdi, .LC17[rip]
.LEHB7:
	call	_ZSt20__throw_length_errorPKc@PLT
.L85:
	mov	rax, QWORD PTR 632[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L78
	lea	rdi, .LC17[rip]
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE7:
.L87:
	mov	rax, QWORD PTR 632[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L78
.LEHB8:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE8:
.L78:
	call	__stack_chk_fail@PLT
.L63:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L37
.L62:
	endbr64
	mov	rbx, rax
	jmp	.L53
.L61:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L54
.L64:
	endbr64
	mov	rbx, rax
	jmp	.L36
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4485:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4485-.LLSDACSB4485
.LLSDACSB4485:
	.uleb128 .LEHB0-.LFB4485
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4485
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L64-.LFB4485
	.uleb128 0
	.uleb128 .LEHB2-.LFB4485
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L62-.LFB4485
	.uleb128 0
	.uleb128 .LEHB3-.LFB4485
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L63-.LFB4485
	.uleb128 0
	.uleb128 .LEHB4-.LFB4485
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L62-.LFB4485
	.uleb128 0
	.uleb128 .LEHB5-.LFB4485
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L63-.LFB4485
	.uleb128 0
	.uleb128 .LEHB6-.LFB4485
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L61-.LFB4485
	.uleb128 0
	.uleb128 .LEHB7-.LFB4485
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L64-.LFB4485
	.uleb128 0
	.uleb128 .LEHB8-.LFB4485
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L63-.LFB4485
	.uleb128 0
.LLSDACSE4485:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4485
	.type	main.cold, @function
main.cold:
.LFSB4485:
.L36:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	mov	rdi, r12
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L37:
	mov	rdi, QWORD PTR 16[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L54:
	mov	rdi, QWORD PTR 24[rsp]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 632[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L88
	mov	rdi, rbx
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L53:
	mov	rdi, r12
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L37
.L88:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4485:
	.section	.gcc_except_table
.LLSDAC4485:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4485-.LLSDACSBC4485
.LLSDACSBC4485:
	.uleb128 .LEHB9-.LCOLDB20
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC4485:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE20:
	.section	.text.startup
.LHOTE20:
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
