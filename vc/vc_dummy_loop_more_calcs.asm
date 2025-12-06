	.file	"vc_dummy_loop_more_calcs.cpp"
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
.LFB16687:
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
.LFE16687:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB18136:
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
.LFE18136:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z4initPfii
	.type	_Z4initPfii, @function
_Z4initPfii:
.LFB16366:
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
.LFE16366:
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
.LFB16367:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA16367
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
	sub	rsp, 960
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 952[rsp], rax
	xor	eax, eax
	lea	rax, 224[rsp]
	lea	r15, 56[rsp]
	mov	rdi, rax
	mov	QWORD PTR 32[rsp], rax
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev@PLT
.LEHE0:
	mov	rsi, QWORD PTR [rbx]
	lea	rdi, 64[rsp]
	mov	rdx, r15
	mov	QWORD PTR 24[rsp], r15
	mov	QWORD PTR 16[rsp], rdi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE1:
	lea	rax, 192[rsp]
	mov	rsi, QWORD PTR 8[rbx]
	lea	rdx, 55[rsp]
	mov	rdi, rax
	mov	QWORD PTR 40[rsp], rax
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	call	__errno_location@PLT
	mov	rbx, QWORD PTR 192[rsp]
	mov	edx, 10
	mov	rsi, r15
	mov	r13d, DWORD PTR [rax]
	mov	DWORD PTR [rax], 0
	mov	r12, rax
	mov	rdi, rbx
	call	__isoc23_strtol@PLT
	mov	r14, rax
	cmp	rbx, QWORD PTR 56[rsp]
	je	.L150
	mov	edx, DWORD PTR [r12]
	cmp	edx, 34
	je	.L43
	mov	eax, 2147483648
	add	rax, r14
	shr	rax, 32
	jne	.L43
	mov	ebx, r14d
	test	edx, edx
	je	.L151
.L46:
	mov	rdi, QWORD PTR 40[rsp]
	mov	r15d, r14d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	ecx, r14d
	shr	ecx, 31
	neg	r15d
	cmovs	r15d, r14d
	mov	edx, ecx
	movzx	r14d, cl
	cmp	r15d, 9
	jbe	.L152
	cmp	r15d, 99
	jbe	.L101
	cmp	r15d, 999
	jbe	.L102
	cmp	r15d, 9999
	jbe	.L153
	mov	eax, r15d
	cmp	r15d, 99999
	jbe	.L154
	cmp	r15d, 999999
	jbe	.L155
	mov	r8d, 5
	cmp	r15d, 9999999
	jbe	.L54
	cmp	r15d, 99999999
	jbe	.L104
	mov	r8d, 9
	cmp	rax, 999999999
	jbe	.L61
.L53:
	lea	r12, 128[rsp]
	lea	esi, 1[r8+rdx]
	mov	edx, 45
	mov	DWORD PTR 8[rsp], r8d
	mov	rdi, r12
	lea	r13, 144[rsp]
	mov	QWORD PTR 128[rsp], r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
	mov	rdx, QWORD PTR 128[rsp]
	mov	ecx, 201
	mov	eax, r15d
	lea	rdi, 736[rsp]
	lea	rsi, .LC18[rip]
	mov	r8d, DWORD PTR 8[rsp]
	rep movsb
	add	rdx, r14
	cmp	r15d, 99
	ja	.L63
.L59:
	add	r15d, r15d
	lea	eax, 1[r15]
	movzx	r15d, BYTE PTR 736[rsp+r15]
	movzx	eax, BYTE PTR 736[rsp+rax]
	mov	BYTE PTR 1[rdx], al
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L156:
	mov	eax, r15d
.L63:
	imul	rax, rax, 1374389535
	mov	ecx, r15d
	shr	rax, 37
	imul	esi, eax, 100
	sub	ecx, esi
	mov	esi, r15d
	mov	r15d, eax
	mov	eax, r8d
	add	ecx, ecx
	lea	edi, 1[rcx]
	movzx	edi, BYTE PTR 736[rsp+rdi]
	mov	BYTE PTR [rdx+rax], dil
	mov	eax, ecx
	lea	edi, -1[r8]
	sub	r8d, 2
	movzx	eax, BYTE PTR 736[rsp+rax]
	mov	BYTE PTR [rdx+rdi], al
	cmp	esi, 9999
	ja	.L156
	cmp	esi, 999
	ja	.L59
.L64:
	add	r15d, 48
.L65:
	mov	BYTE PTR [rdx], r15b
	mov	rax, QWORD PTR 64[rsp]
	lea	r14, 96[rsp]
	lea	r15, 112[rsp]
	mov	rdi, r14
	mov	QWORD PTR 96[rsp], r15
	mov	QWORD PTR 8[rsp], rax
	mov	rax, QWORD PTR 72[rsp]
	mov	QWORD PTR 104[rsp], 0
	lea	rsi, 11[rax]
	mov	BYTE PTR 112[rsp], 0
	mov	QWORD PTR [rsp], rax
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
	mov	rdx, QWORD PTR [rsp]
	mov	rsi, QWORD PTR 8[rsp]
	mov	rdi, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm@PLT
	mov	edx, 11
	lea	rsi, .LC19[rip]
	mov	rdi, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm@PLT
.LEHE3:
	mov	r8, QWORD PTR 104[rsp]
	mov	rdx, QWORD PTR 136[rsp]
	mov	rcx, QWORD PTR 96[rsp]
	mov	rsi, QWORD PTR 128[rsp]
	lea	rax, [r8+rdx]
	cmp	rcx, r15
	je	.L157
	cmp	QWORD PTR 112[rsp], rax
	jnb	.L70
	cmp	rsi, r13
	je	.L107
.L71:
	mov	rdi, QWORD PTR 144[rsp]
.L72:
	cmp	rdi, rax
	jnb	.L158
.L70:
	movabs	rax, 4611686018427387903
	sub	rax, r8
	cmp	rax, rdx
	jb	.L159
	mov	rdi, r14
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE4:
.L149:
	lea	r9, 176[rsp]
	lea	r8, 16[rax]
	mov	rdx, QWORD PTR 8[rax]
	mov	QWORD PTR 160[rsp], r9
	mov	rcx, QWORD PTR [rax]
	cmp	rcx, r8
	je	.L160
	mov	QWORD PTR 160[rsp], rcx
	mov	rcx, QWORD PTR 16[rax]
	mov	QWORD PTR 176[rsp], rcx
.L79:
	mov	QWORD PTR 168[rsp], rdx
	lea	r13, 160[rsp]
	lea	rsi, .LC21[rip]
	mov	QWORD PTR [rax], r8
	mov	rdi, r13
	mov	QWORD PTR 8[rax], 0
	mov	BYTE PTR 16[rax], 0
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
.LEHE5:
	mov	rdi, QWORD PTR 40[rsp]
	mov	rsi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	mov	rsi, QWORD PTR 192[rsp]
	mov	edx, 17
	lea	rdi, 232[rsp]
.LEHB6:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	mov	rdx, QWORD PTR 224[rsp]
	mov	rdi, QWORD PTR 32[rsp]
	add	rdi, QWORD PTR -24[rdx]
	test	rax, rax
	je	.L161
	xor	esi, esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE6:
.L81:
	mov	rdi, QWORD PTR 40[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, r14
	xor	r14d, r14d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, QWORD PTR 24[rsp]
	mov	edx, 400000000
	mov	esi, 32
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L82
	mov	r14, QWORD PTR 56[rsp]
.L82:
	mov	rdi, QWORD PTR 24[rsp]
	mov	edx, 400000000
	mov	esi, 32
	xor	r13d, r13d
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L83
	mov	r13, QWORD PTR 56[rsp]
.L83:
	mov	rdi, QWORD PTR 24[rsp]
	mov	edx, 400000000
	mov	esi, 32
	xor	r12d, r12d
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L84
	mov	r12, QWORD PTR 56[rsp]
.L84:
	mov	edx, 123
	mov	esi, 100000000
	mov	rdi, r13
	call	_Z4initPfii
	mov	edx, 321
	mov	esi, 100000000
	mov	rdi, r12
	call	_Z4initPfii
	lea	rdx, 4[r13]
	mov	rax, r14
	sub	rax, rdx
	cmp	rax, 24
	jbe	.L111
	lea	rdx, 4[r12]
	mov	rax, r14
	sub	rax, rdx
	cmp	rax, 24
	jbe	.L111
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L86:
	vcvttps2dq	ymm0, YMMWORD PTR 0[r13+rax]
	vcvttps2dq	ymm1, YMMWORD PTR [r12+rax]
	vpaddd	ymm1, ymm1, ymm0
	vpslld	ymm0, ymm1, 1
	vpaddd	ymm0, ymm0, ymm1
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR [r14+rax], ymm0
	add	rax, 32
	cmp	rax, 400000000
	jne	.L86
	vzeroupper
.L87:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	xor	edx, edx
	mov	r15, rax
	.p2align 4,,10
	.p2align 3
.L90:
	vmovaps	ymm2, YMMWORD PTR 0[r13+rdx]
	vxorps	xmm0, xmm0, xmm0
	vmulps	ymm1, ymm2, YMMWORD PTR [r12+rdx]
	vaddps	ymm0, ymm0, ymm2
	test	ebx, ebx
	jle	.L88
	xor	eax, eax
	test	bl, 1
	je	.L89
	mov	eax, 1
	vaddps	ymm0, ymm0, ymm1
	cmp	eax, ebx
	je	.L88
	.p2align 4,,10
	.p2align 3
.L89:
	vaddps	ymm0, ymm0, ymm1
	add	eax, 2
	vaddps	ymm0, ymm0, ymm1
	cmp	eax, ebx
	jne	.L89
.L88:
	vmovups	YMMWORD PTR [r14+rdx], ymm0
	add	rdx, 32
	cmp	rdx, 400000000
	jne	.L90
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	rdi, QWORD PTR 32[rsp]
	movabs	rdx, 4835703278458516699
	sub	rax, r15
	mov	rcx, rax
	imul	rdx
	sar	rcx, 63
	sar	rdx, 18
	mov	rsi, rdx
	sub	rsi, rcx
.LEHB7:
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	mov	r15, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	rbx, QWORD PTR 240[r15+rax]
	test	rbx, rbx
	je	.L162
	cmp	BYTE PTR 56[rbx], 0
	je	.L93
	movzx	eax, BYTE PTR 67[rbx]
.L94:
	movsx	esi, al
	mov	rdi, r15
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
.LEHE7:
	mov	rdi, r14
	call	free@PLT
	mov	rdi, r13
	call	free@PLT
	mov	rdi, r12
	call	free@PLT
	mov	rdi, QWORD PTR 16[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, QWORD PTR 32[rsp]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L144
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
.L102:
	.cfi_restore_state
	mov	r8d, 1
	mov	eax, r15d
.L54:
	add	r8d, 2
.L61:
	lea	r12, 128[rsp]
	lea	esi, [r8+rdx]
	mov	edx, 45
	mov	QWORD PTR [rsp], rax
	lea	r13, 144[rsp]
	mov	rdi, r12
	mov	DWORD PTR 8[rsp], r8d
	mov	QWORD PTR 128[rsp], r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
	vmovdqa	ymm3, YMMWORD PTR .LC22[rip]
	mov	rdx, QWORD PTR 128[rsp]
	vmovdqa	ymm4, YMMWORD PTR .LC23[rip]
	vmovdqa	ymm5, YMMWORD PTR .LC24[rip]
	vmovdqa	ymm6, YMMWORD PTR .LC25[rip]
	vmovdqa	ymm7, YMMWORD PTR .LC26[rip]
	add	rdx, r14
	vmovdqa	YMMWORD PTR 736[rsp], ymm3
	vmovdqa	xmm0, XMMWORD PTR .LC29[rip]
	mov	r8d, DWORD PTR 8[rsp]
	vmovdqa	YMMWORD PTR 768[rsp], ymm4
	vmovdqa	ymm3, YMMWORD PTR .LC27[rip]
	mov	rax, QWORD PTR [rsp]
	vmovdqa	YMMWORD PTR 800[rsp], ymm5
	vmovdqa	YMMWORD PTR 832[rsp], ymm6
	sub	r8d, 1
	vmovdqa	YMMWORD PTR 896[rsp], ymm3
	vmovdqa	YMMWORD PTR 864[rsp], ymm7
	vmovdqu	XMMWORD PTR 921[rsp], xmm0
	vzeroupper
	jmp	.L63
.L151:
	mov	DWORD PTR [r12], r13d
	jmp	.L46
.L93:
	mov	rdi, rbx
.LEHB8:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR [rbx]
	mov	esi, 10
	mov	rdi, rbx
	call	[QWORD PTR 48[rax]]
.LEHE8:
	jmp	.L94
.L161:
	mov	esi, DWORD PTR 32[rdi]
	or	esi, 4
.LEHB9:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE9:
	jmp	.L81
.L158:
	xor	edx, edx
	xor	esi, esi
	mov	rdi, r12
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	jmp	.L149
.L104:
	mov	r8d, 5
.L55:
	add	r8d, 3
	jmp	.L61
.L157:
	cmp	rax, 15
	jbe	.L70
	cmp	rsi, r13
	jne	.L71
	jmp	.L70
.L111:
	vxorps	xmm1, xmm1, xmm1
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L85:
	vcvttss2si	edx, DWORD PTR [r12+rax]
	vcvttss2si	ecx, DWORD PTR 0[r13+rax]
	add	edx, ecx
	lea	edx, [rdx+rdx*2]
	vcvtsi2ss	xmm0, xmm1, edx
	vmovss	DWORD PTR [r14+rax], xmm0
	add	rax, 4
	cmp	rax, 400000000
	jne	.L85
	jmp	.L87
.L160:
	lea	ecx, 1[rdx]
	mov	rdi, r9
	mov	rsi, r8
	rep movsb
	mov	rdx, QWORD PTR 8[rax]
	jmp	.L79
.L107:
	mov	edi, 15
	jmp	.L72
.L159:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L144
	lea	rdi, .LC20[rip]
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE10:
.L144:
	call	__stack_chk_fail@PLT
.L155:
	mov	r8d, 5
	jmp	.L53
.L154:
	mov	r8d, 5
	jmp	.L61
.L43:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L144
	lea	rdi, .LC17[rip]
.LEHB11:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L150:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L144
	lea	rdi, .LC17[rip]
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE11:
.L101:
	mov	r8d, 1
	jmp	.L53
.L152:
	lea	r12, 128[rsp]
	mov	edx, 45
	lea	r13, 144[rsp]
	lea	esi, 1[rcx]
	mov	rdi, r12
	mov	QWORD PTR 128[rsp], r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@PLT
	mov	rdx, QWORD PTR 128[rsp]
	add	rdx, r14
	jmp	.L64
.L162:
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L144
.LEHB12:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE12:
.L153:
	mov	r8d, 1
	mov	eax, r15d
	jmp	.L55
.L117:
	endbr64
	mov	rbx, rax
	jmp	.L49
.L115:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L96
.L116:
	endbr64
	mov	rbx, rax
	jmp	.L95
.L112:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L98
.L118:
	endbr64
	mov	rbx, rax
	jmp	.L67
.L113:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L51
.L114:
	endbr64
	mov	rbx, rax
	vzeroupper
	jmp	.L97
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA16367:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16367-.LLSDACSB16367
.LLSDACSB16367:
	.uleb128 .LEHB0-.LFB16367
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB16367
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L112-.LFB16367
	.uleb128 0
	.uleb128 .LEHB2-.LFB16367
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L113-.LFB16367
	.uleb128 0
	.uleb128 .LEHB3-.LFB16367
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L118-.LFB16367
	.uleb128 0
	.uleb128 .LEHB4-.LFB16367
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L114-.LFB16367
	.uleb128 0
	.uleb128 .LEHB5-.LFB16367
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L115-.LFB16367
	.uleb128 0
	.uleb128 .LEHB6-.LFB16367
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L116-.LFB16367
	.uleb128 0
	.uleb128 .LEHB7-.LFB16367
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L113-.LFB16367
	.uleb128 0
	.uleb128 .LEHB8-.LFB16367
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L113-.LFB16367
	.uleb128 0
	.uleb128 .LEHB9-.LFB16367
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L116-.LFB16367
	.uleb128 0
	.uleb128 .LEHB10-.LFB16367
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L114-.LFB16367
	.uleb128 0
	.uleb128 .LEHB11-.LFB16367
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L117-.LFB16367
	.uleb128 0
	.uleb128 .LEHB12-.LFB16367
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L113-.LFB16367
	.uleb128 0
.LLSDACSE16367:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC16367
	.type	main.cold, @function
main.cold:
.LFSB16367:
.L49:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	cmp	DWORD PTR [r12], 0
	jne	.L50
	mov	DWORD PTR [r12], r13d
.L50:
	mov	rdi, QWORD PTR 40[rsp]
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L51
.L95:
	mov	rdi, QWORD PTR 40[rsp]
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L96:
	mov	rdi, r13
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L97:
	mov	rdi, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L68:
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L51:
	mov	rdi, QWORD PTR 16[rsp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L98:
	mov	rdi, QWORD PTR 32[rsp]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	mov	rax, QWORD PTR 952[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L163
	mov	rdi, rbx
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L163:
	call	__stack_chk_fail@PLT
.L67:
	mov	rdi, r14
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L68
	.cfi_endproc
.LFE16367:
	.section	.gcc_except_table
.LLSDAC16367:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC16367-.LLSDACSBC16367
.LLSDACSBC16367:
	.uleb128 .LEHB13-.LCOLDB30
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSEC16367:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE30:
	.section	.text.startup
.LHOTE30:
	.section	.rodata.str1.1
.LC31:
	.string	"1.4.5-dev"
	.section	.text.startup
	.p2align 4
	.type	_GLOBAL__sub_I__Z4initPfii, @function
_GLOBAL__sub_I__Z4initPfii:
.LFB18151:
	.cfi_startproc
	endbr64
	lea	rdx, .LC31[rip]
	mov	esi, 66571
	mov	edi, 5
	jmp	_ZN4Vc_16Common15checkLibraryAbiEjjPKc@PLT
	.cfi_endproc
.LFE18151:
	.size	_GLOBAL__sub_I__Z4initPfii, .-_GLOBAL__sub_I__Z4initPfii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z4initPfii
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
