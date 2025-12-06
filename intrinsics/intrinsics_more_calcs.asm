	.file	"intrinsics_more_calcs.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"basic_string: construction from null is not valid"
#NO_APP
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB10688:
	.cfi_startproc
	endbr64
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	lea	r13, 16[rdi]
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
	mov	QWORD PTR [rdi], r13
	test	rsi, rsi
	je	.L16
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r12, rsi
	call	strlen@PLT
	mov	QWORD PTR [rsp], rax
	mov	rbp, rax
	cmp	rax, 15
	ja	.L17
	cmp	rax, 1
	jne	.L6
	movzx	edx, BYTE PTR [r12]
	mov	BYTE PTR 16[rbx], dl
.L7:
	mov	QWORD PTR 8[rbx], rax
	mov	BYTE PTR 0[r13+rax], 0
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L14
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
	test	rax, rax
	je	.L7
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L17:
	mov	rsi, rsp
	xor	edx, edx
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	mov	QWORD PTR [rbx], rax
	mov	r13, rax
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR 16[rbx], rax
.L5:
	mov	rdi, r13
	mov	rdx, rbp
	mov	rsi, r12
	call	memcpy@PLT
	mov	rax, QWORD PTR [rsp]
	mov	r13, QWORD PTR [rbx]
	jmp	.L7
.L14:
	call	__stack_chk_fail@PLT
.L16:
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L14
	lea	rdi, .LC0[rip]
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE10688:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB11174:
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
.L19:
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
	jne	.L19
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
	vpbroadcastq	ymm3, QWORD PTR .LC9[rip]
	vpand	xmm0, xmm0, xmm2
	mov	QWORD PTR 1808[rdx], rax
	mov	eax, 2567483615
	vpbroadcastq	ymm2, QWORD PTR .LC10[rip]
	vpxor	xmm0, xmm1, xmm0
	vmovq	xmm7, rax
	vpbroadcastq	ymm1, QWORD PTR .LC11[rip]
	vmovdqu	XMMWORD PTR 1792[rdx], xmm0
	vpbroadcastq	ymm0, xmm7
.L20:
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
	jne	.L20
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
.LFE11174:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z4initPfii
	.type	_Z4initPfii, @function
_Z4initPfii:
.LFB10367:
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
.L24:
	mov	rax, rcx
	shr	rax, 30
	xor	rax, rcx
	imul	rax, rax, 1812433253
	lea	ecx, [rax+rdx]
	mov	QWORD PTR [rbx+rdx*8], rcx
	add	rdx, 1
	cmp	rdx, 624
	jne	.L24
	mov	QWORD PTR 4992[rsp], 624
	test	esi, esi
	jle	.L23
	movsx	rsi, esi
	vxorps	xmm4, xmm4, xmm4
	mov	rbp, rdi
	vmovss	xmm3, DWORD PTR .LC13[rip]
	vmovss	xmm1, DWORD PTR .LC14[rip]
	vmovss	xmm5, DWORD PTR .LC15[rip]
	lea	r12, [rdi+rsi*4]
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L38:
	vcvtsi2ss	xmm0, xmm4, rax
.L28:
	vxorps	xmm2, xmm2, xmm2
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L29
	vmulss	xmm0, xmm0, xmm5
	add	rbp, 4
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR -4[rbp], xmm0
	cmp	r12, rbp
	je	.L23
.L30:
	mov	rdx, rcx
.L32:
	cmp	rdx, 623
	ja	.L37
.L26:
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
	jns	.L38
	mov	rdx, rax
	and	eax, 1
	shr	rdx
	or	rdx, rax
	vcvtsi2ss	xmm0, xmm4, rdx
	vaddss	xmm0, xmm0, xmm0
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L37:
	mov	rdi, rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rdx, QWORD PTR 4992[rsp]
	vmovss	xmm5, DWORD PTR .LC15[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC14[rip]
	vmovss	xmm3, DWORD PTR .LC13[rip]
	jmp	.L26
.L29:
	mov	DWORD PTR 0[rbp], 0x411fffff
	add	rbp, 4
	cmp	rbp, r12
	jne	.L30
.L23:
	mov	rax, QWORD PTR 5000[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L39
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
.L39:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10367:
	.size	_Z4initPfii, .-_Z4initPfii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"stoi"
.LC19:
	.string	"_times_for_"
.LC20:
	.string	"basic_string::append"
.LC21:
	.string	".txt"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC18:
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB30:
	.section	.text.startup,"ax",@progbits
.LHOTB30:
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	mov	r12, rsi
	push	rbx
	and	rsp, -32
	sub	rsp, 960
	.cfi_offset 3, -56
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 952[rsp], rax
	xor	eax, eax
	lea	rax, 224[rsp]
	lea	rbx, 56[rsp]
	mov	rdi, rax
	mov	QWORD PTR 40[rsp], rax
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev@PLT
.LEHE0:
	lea	rax, 64[rsp]
	mov	rsi, QWORD PTR [r12]
	mov	rdx, rbx
	mov	rdi, rax
	mov	QWORD PTR 24[rsp], rax
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE1:
	lea	r13, 192[rsp]
	mov	rsi, QWORD PTR 8[r12]
	lea	rdx, 55[rsp]
	mov	rdi, r13
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	call	__errno_location@PLT
	mov	r14, QWORD PTR 192[rsp]
	mov	edx, 10
	mov	rsi, rbx
	mov	r15d, DWORD PTR [rax]
	mov	DWORD PTR [rax], 0
	mov	r12, rax
	mov	rdi, r14
	call	__isoc23_strtol@PLT
	cmp	r14, QWORD PTR 56[rsp]
	je	.L127
	mov	ecx, DWORD PTR [r12]
	cmp	ecx, 34
	je	.L43
	mov	edx, 2147483648
	add	rdx, rax
	shr	rdx, 32
	jne	.L43
	test	ecx, ecx
	je	.L128
.L46:
	mov	rdi, r13
	mov	QWORD PTR 32[rsp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rax, QWORD PTR 32[rsp]
	mov	r8d, eax
	mov	r14d, eax
	shr	r8d, 31
	neg	r14d
	cmovs	r14d, eax
	mov	eax, r8d
	movzx	r8d, r8b
	cmp	r14d, 9
	jbe	.L129
	cmp	r14d, 99
	jbe	.L96
	cmp	r14d, 999
	jbe	.L97
	cmp	r14d, 9999
	jbe	.L130
	mov	r12d, r14d
	cmp	r14d, 99999
	jbe	.L131
	cmp	r14d, 999999
	jbe	.L132
	mov	r15d, 5
	cmp	r14d, 9999999
	jbe	.L54
	cmp	r14d, 99999999
	jbe	.L99
	mov	r15d, 9
	cmp	r12, 999999999
	jbe	.L61
.L53:
	lea	rcx, 144[rsp]
	lea	rdi, 128[rsp]
	mov	edx, 45
	mov	r12d, r14d
	lea	esi, 1[r15+rax]
	mov	QWORD PTR 16[rsp], r8
	mov	QWORD PTR 32[rsp], rdi
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 128[rsp], rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
	mov	r8, QWORD PTR 16[rsp]
	mov	ecx, 201
	lea	rdi, 736[rsp]
	lea	rsi, .LC18[rip]
	add	r8, QWORD PTR 128[rsp]
	rep movsb
	cmp	r14d, 99
	ja	.L63
.L59:
	add	r14d, r14d
	lea	eax, 1[r14]
	movzx	r14d, BYTE PTR 736[rsp+r14]
	movzx	eax, BYTE PTR 736[rsp+rax]
	mov	BYTE PTR 1[r8], al
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L133:
	mov	r12d, r14d
.L63:
	imul	rdx, r12, 1374389535
	mov	eax, r14d
	shr	rdx, 37
	imul	ecx, edx, 100
	sub	eax, ecx
	mov	ecx, r14d
	mov	r14d, edx
	mov	edx, r15d
	add	eax, eax
	lea	esi, 1[rax]
	movzx	eax, BYTE PTR 736[rsp+rax]
	movzx	esi, BYTE PTR 736[rsp+rsi]
	mov	BYTE PTR [r8+rdx], sil
	lea	edx, -1[r15]
	sub	r15d, 2
	mov	BYTE PTR [r8+rdx], al
	cmp	ecx, 9999
	ja	.L133
	cmp	ecx, 999
	ja	.L59
.L64:
	add	r14d, 48
.L65:
	mov	BYTE PTR [r8], r14b
	mov	r14, QWORD PTR 72[rsp]
	lea	r12, 96[rsp]
	lea	r15, 112[rsp]
	mov	rax, QWORD PTR 64[rsp]
	mov	rdi, r12
	mov	QWORD PTR 96[rsp], r15
	lea	rsi, 11[r14]
	mov	BYTE PTR 112[rsp], 0
	mov	QWORD PTR 16[rsp], rax
	mov	QWORD PTR 104[rsp], 0
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
	mov	rsi, QWORD PTR 16[rsp]
	mov	rdx, r14
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm@PLT
	mov	edx, 11
	lea	rsi, .LC19[rip]
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm@PLT
.LEHE3:
	mov	r8, QWORD PTR 104[rsp]
	mov	rdx, QWORD PTR 136[rsp]
	mov	rcx, QWORD PTR 96[rsp]
	mov	rsi, QWORD PTR 128[rsp]
	lea	rax, [r8+rdx]
	cmp	rcx, r15
	je	.L134
	cmp	QWORD PTR 112[rsp], rax
	jnb	.L70
	mov	rdi, QWORD PTR 8[rsp]
	cmp	rsi, rdi
	je	.L102
.L71:
	mov	rdi, QWORD PTR 144[rsp]
.L72:
	cmp	rdi, rax
	jnb	.L135
.L70:
	movabs	rax, 4611686018427387903
	sub	rax, r8
	cmp	rax, rdx
	jb	.L136
	mov	rdi, r12
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE4:
	lea	r8, 176[rsp]
	lea	r9, 16[rax]
	mov	rcx, QWORD PTR 8[rax]
	mov	QWORD PTR 160[rsp], r8
	mov	rdx, QWORD PTR [rax]
	cmp	rdx, r9
	je	.L137
	mov	QWORD PTR 160[rsp], rdx
	mov	rdx, QWORD PTR 16[rax]
	mov	QWORD PTR 176[rsp], rdx
.L79:
	mov	QWORD PTR 168[rsp], rcx
	mov	QWORD PTR [rax], r9
	mov	QWORD PTR 8[rax], 0
	mov	BYTE PTR 16[rax], 0
.L75:
	lea	r14, 160[rsp]
	lea	rsi, .LC21[rip]
	mov	rdi, r14
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
.LEHE5:
	mov	rsi, rax
	mov	rdi, r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	mov	rsi, QWORD PTR 192[rsp]
	mov	edx, 17
	lea	rdi, 232[rsp]
.LEHB6:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	mov	rdx, QWORD PTR 224[rsp]
	mov	rdi, QWORD PTR 40[rsp]
	add	rdi, QWORD PTR -24[rdx]
	test	rax, rax
	je	.L138
	xor	esi, esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE6:
.L81:
	mov	rdi, r13
	xor	r13d, r13d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, QWORD PTR 32[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	edx, 400000000
	mov	esi, 32
	mov	rdi, rbx
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L82
	mov	r13, QWORD PTR 56[rsp]
.L82:
	mov	edx, 400000000
	mov	esi, 32
	mov	rdi, rbx
	xor	r12d, r12d
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L83
	mov	r12, QWORD PTR 56[rsp]
.L83:
	mov	rdi, rbx
	mov	edx, 400000000
	mov	esi, 32
	xor	ebx, ebx
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L84
	mov	rbx, QWORD PTR 56[rsp]
.L84:
	mov	edx, 123
	mov	esi, 100000000
	mov	rdi, r12
	call	_Z4initPfii
	mov	edx, 321
	mov	esi, 100000000
	mov	rdi, rbx
	call	_Z4initPfii
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	r14, rax
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L85:
	vmovaps	ymm1, YMMWORD PTR [r12+rax]
	vaddps	ymm0, ymm1, YMMWORD PTR [rbx+rax]
	vmovaps	YMMWORD PTR 0[r13+rax], ymm0
	add	rax, 32
	cmp	rax, 400000000
	jne	.L85
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	rdi, QWORD PTR 40[rsp]
	movabs	rdx, 4835703278458516699
	sub	rax, r14
	mov	rcx, rax
	imul	rdx
	sar	rcx, 63
	sar	rdx, 18
	mov	rsi, rdx
	sub	rsi, rcx
.LEHB7:
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	mov	r14, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	r15, QWORD PTR 240[r14+rax]
	test	r15, r15
	je	.L139
	cmp	BYTE PTR 56[r15], 0
	je	.L88
	movzx	eax, BYTE PTR 67[r15]
.L89:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
.LEHE7:
	mov	rdi, r13
	call	free@PLT
	mov	rdi, r12
	call	free@PLT
	mov	rdi, rbx
	call	free@PLT
	mov	rdi, QWORD PTR 24[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, QWORD PTR 40[rsp]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L124
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
.L97:
	.cfi_restore_state
	mov	r15d, 1
	mov	r12d, r14d
.L54:
	add	r15d, 2
.L61:
	lea	esi, [r15+rax]
	mov	edx, 45
	mov	QWORD PTR 16[rsp], r8
	lea	rcx, 144[rsp]
	lea	rdi, 128[rsp]
	mov	QWORD PTR 8[rsp], rcx
	sub	r15d, 1
	mov	QWORD PTR 32[rsp], rdi
	mov	QWORD PTR 128[rsp], rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
	vmovdqa	ymm2, YMMWORD PTR .LC22[rip]
	vmovdqa	ymm3, YMMWORD PTR .LC23[rip]
	vmovdqa	ymm4, YMMWORD PTR .LC24[rip]
	vmovdqa	ymm5, YMMWORD PTR .LC25[rip]
	vmovdqa	ymm6, YMMWORD PTR .LC26[rip]
	vmovdqa	ymm7, YMMWORD PTR .LC27[rip]
	vmovdqa	YMMWORD PTR 736[rsp], ymm2
	vmovdqa	xmm0, XMMWORD PTR .LC29[rip]
	mov	r8, QWORD PTR 16[rsp]
	vmovdqa	YMMWORD PTR 768[rsp], ymm3
	vmovdqa	YMMWORD PTR 896[rsp], ymm7
	add	r8, QWORD PTR 128[rsp]
	vmovdqa	YMMWORD PTR 800[rsp], ymm4
	vmovdqa	YMMWORD PTR 832[rsp], ymm5
	vmovdqa	YMMWORD PTR 864[rsp], ymm6
	vmovdqu	XMMWORD PTR 921[rsp], xmm0
	vzeroupper
	jmp	.L63
.L128:
	mov	DWORD PTR [r12], r15d
	jmp	.L46
.L88:
	mov	rdi, r15
.LEHB8:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR [r15]
	mov	esi, 10
	mov	rdi, r15
	call	[QWORD PTR 48[rax]]
.LEHE8:
	jmp	.L89
.L138:
	mov	esi, DWORD PTR 32[rdi]
	or	esi, 4
.LEHB9:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE9:
	jmp	.L81
.L135:
	mov	rdi, QWORD PTR 32[rsp]
	xor	edx, edx
	xor	esi, esi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE10:
	lea	r8, 176[rsp]
	lea	r9, 16[rax]
	mov	rdx, QWORD PTR 8[rax]
	mov	QWORD PTR 160[rsp], r8
	mov	rcx, QWORD PTR [rax]
	cmp	rcx, r9
	je	.L140
	mov	QWORD PTR 160[rsp], rcx
	mov	rcx, QWORD PTR 16[rax]
	mov	QWORD PTR 176[rsp], rcx
.L74:
	mov	QWORD PTR 168[rsp], rdx
	xor	edx, edx
	mov	QWORD PTR [rax], r9
	mov	QWORD PTR 8[rax], rdx
	mov	BYTE PTR 16[rax], 0
	jmp	.L75
.L99:
	mov	r15d, 5
.L55:
	add	r15d, 3
	jmp	.L61
.L134:
	cmp	rax, 15
	jbe	.L70
	mov	rdi, QWORD PTR 8[rsp]
	cmp	rsi, rdi
	jne	.L71
	jmp	.L70
.L137:
	add	ecx, 1
	mov	rdi, r8
	mov	rsi, r9
	rep movsb
	mov	rcx, QWORD PTR 8[rax]
	jmp	.L79
.L102:
	mov	edi, 15
	jmp	.L72
.L140:
	lea	ecx, 1[rdx]
	mov	rdi, r8
	mov	rsi, r9
	rep movsb
	mov	rdx, QWORD PTR 8[rax]
	jmp	.L74
.L130:
	mov	r15d, 1
	mov	r12d, r14d
	jmp	.L55
.L96:
	mov	r15d, 1
	jmp	.L53
.L129:
	lea	rcx, 144[rsp]
	lea	esi, 1[rax]
	mov	edx, 45
	mov	QWORD PTR 16[rsp], r8
	lea	rdi, 128[rsp]
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR 32[rsp], rdi
	mov	QWORD PTR 128[rsp], rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
	mov	r8, QWORD PTR 16[rsp]
	add	r8, QWORD PTR 128[rsp]
	jmp	.L64
.L131:
	mov	r15d, 5
	jmp	.L61
.L132:
	mov	r15d, 5
	jmp	.L53
.L127:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L124
	lea	rdi, .LC17[rip]
.LEHB11:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE11:
.L136:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L124
	lea	rdi, .LC20[rip]
.LEHB12:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE12:
.L139:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L124
.LEHB13:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE13:
.L124:
	call	__stack_chk_fail@PLT
.L43:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L124
	lea	rdi, .LC17[rip]
.LEHB14:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE14:
.L110:
	endbr64
	mov	rbx, rax
	jmp	.L90
.L108:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L92
.L111:
	endbr64
	mov	rbx, rax
	jmp	.L49
.L112:
	endbr64
	mov	rbx, rax
	jmp	.L67
.L107:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L51
.L106:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L93
.L109:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L91
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
	.uleb128 .L106-.LFB10368
	.uleb128 0
	.uleb128 .LEHB2-.LFB10368
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L107-.LFB10368
	.uleb128 0
	.uleb128 .LEHB3-.LFB10368
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L112-.LFB10368
	.uleb128 0
	.uleb128 .LEHB4-.LFB10368
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L108-.LFB10368
	.uleb128 0
	.uleb128 .LEHB5-.LFB10368
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L109-.LFB10368
	.uleb128 0
	.uleb128 .LEHB6-.LFB10368
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L110-.LFB10368
	.uleb128 0
	.uleb128 .LEHB7-.LFB10368
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L107-.LFB10368
	.uleb128 0
	.uleb128 .LEHB8-.LFB10368
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L107-.LFB10368
	.uleb128 0
	.uleb128 .LEHB9-.LFB10368
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L110-.LFB10368
	.uleb128 0
	.uleb128 .LEHB10-.LFB10368
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L108-.LFB10368
	.uleb128 0
	.uleb128 .LEHB11-.LFB10368
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L111-.LFB10368
	.uleb128 0
	.uleb128 .LEHB12-.LFB10368
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L108-.LFB10368
	.uleb128 0
	.uleb128 .LEHB13-.LFB10368
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L107-.LFB10368
	.uleb128 0
	.uleb128 .LEHB14-.LFB10368
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L111-.LFB10368
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
.L90:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	mov	rdi, r13
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L91:
	mov	rdi, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L92:
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L68:
	mov	rdi, QWORD PTR 32[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L51:
	mov	rdi, QWORD PTR 24[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L93:
	mov	rdi, QWORD PTR 40[rsp]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L141
	mov	rdi, rbx
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L49:
	cmp	DWORD PTR [r12], 0
	jne	.L50
	mov	DWORD PTR [r12], r15d
.L50:
	mov	rdi, r13
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L51
.L141:
	call	__stack_chk_fail@PLT
.L67:
	mov	rdi, r12
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L68
	.cfi_endproc
.LFE10368:
	.section	.gcc_except_table
.LLSDAC10368:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC10368-.LLSDACSBC10368
.LLSDACSBC10368:
	.uleb128 .LEHB15-.LCOLDB30
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC10368:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE30:
	.section	.text.startup
.LHOTE30:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC9:
	.quad	-2147483648
	.align 8
.LC10:
	.quad	2147483647
	.align 8
.LC11:
	.quad	1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC13:
	.long	796917760
	.align 4
.LC14:
	.long	1065353216
	.align 4
.LC15:
	.long	1091567616
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC22:
	.quad	3688503277381496880
	.quad	3976738051646829616
	.quad	3544667369688283184
	.quad	3832902143785906737
	.align 32
.LC23:
	.quad	4121136918051239473
	.quad	3689066235924983858
	.quad	3977301010190316594
	.quad	3545230328231770162
	.align 32
.LC24:
	.quad	3833465102329393715
	.quad	4121699876594726451
	.quad	3689629194468470836
	.quad	3977863968733803572
	.align 32
.LC25:
	.quad	3545793286775257140
	.quad	3834028060872880693
	.quad	4122262835138213429
	.quad	3690192153011957814
	.align 32
.LC26:
	.quad	3978426927277290550
	.quad	3546356245318744118
	.quad	3834591019416367671
	.quad	4122825793681700407
	.align 32
.LC27:
	.quad	3690755111555444792
	.quad	3978989885820777528
	.quad	3546919203862231096
	.quad	3835153977959854649
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC29:
	.quad	4122263930388298034
	.quad	16106987313379638
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
