	.file	"intrinsics_simple_dummy_loop.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z7my_funcPfS_S_ii
	.type	_Z7my_funcPfS_S_ii, @function
_Z7my_funcPfS_S_ii:
.LFB10368:
	.cfi_startproc
	endbr64
	mov	r9, rsi
	test	ecx, ecx
	jle	.L5
	movsx	r10, r8d
	xor	eax, eax
	xor	esi, esi
	sal	r10, 2
	.p2align 4,,10
	.p2align 3
.L3:
	vmovaps	ymm1, YMMWORD PTR [r9+rax]
	vaddps	ymm0, ymm1, YMMWORD PTR [rdx+rax]
	add	esi, r8d
	vmovaps	YMMWORD PTR [rdi+rax], ymm0
	add	rax, r10
	cmp	ecx, esi
	jg	.L3
	vzeroupper
.L5:
	ret
	.cfi_endproc
.LFE10368:
	.size	_Z7my_funcPfS_S_ii, .-_Z7my_funcPfS_S_ii
	.p2align 4
	.globl	_Z10dummy_loopPfS_S_i
	.type	_Z10dummy_loopPfS_S_i, @function
_Z10dummy_loopPfS_S_i:
.LFB10369:
	.cfi_startproc
	endbr64
	movsx	rax, ecx
	mov	r8, rsi
	mov	rsi, rdx
	test	eax, eax
	jle	.L31
	lea	edx, -1[rax]
	vxorps	xmm2, xmm2, xmm2
	mov	r9d, eax
	cmp	edx, 2
	jbe	.L9
	lea	r10, 4[rsi]
	mov	rcx, rdi
	sub	rcx, r10
	cmp	rcx, 24
	jbe	.L9
	lea	r10, 4[r8]
	mov	rcx, rdi
	sub	rcx, r10
	cmp	rcx, 24
	jbe	.L9
	cmp	edx, 6
	jbe	.L17
	mov	ecx, eax
	xor	edx, edx
	shr	ecx, 3
	sal	rcx, 5
	.p2align 4,,10
	.p2align 3
.L11:
	vcvttps2dq	ymm0, YMMWORD PTR [rsi+rdx]
	vcvttps2dq	ymm1, YMMWORD PTR [r8+rdx]
	vpaddd	ymm1, ymm1, ymm0
	vpslld	ymm0, ymm1, 1
	vpaddd	ymm0, ymm0, ymm1
	vcvtdq2ps	ymm0, ymm0
	vmovups	YMMWORD PTR [rdi+rdx], ymm0
	add	rdx, 32
	cmp	rcx, rdx
	jne	.L11
	mov	edx, eax
	and	edx, -8
	mov	ecx, edx
	cmp	eax, edx
	je	.L29
	mov	r9d, eax
	sub	r9d, edx
	lea	r10d, -1[r9]
	cmp	r10d, 2
	jbe	.L32
	vzeroupper
.L10:
	vcvttps2dq	xmm0, XMMWORD PTR [rsi+rcx*4]
	vcvttps2dq	xmm1, XMMWORD PTR [r8+rcx*4]
	vpaddd	xmm1, xmm1, xmm0
	vpslld	xmm0, xmm1, 1
	vpaddd	xmm0, xmm0, xmm1
	vcvtdq2ps	xmm0, xmm0
	vmovups	XMMWORD PTR [rdi+rcx*4], xmm0
	mov	ecx, r9d
	and	ecx, -4
	add	edx, ecx
	and	r9d, 3
	je	.L31
.L13:
	movsx	r9, edx
	vcvttss2si	r10d, DWORD PTR [r8+r9*4]
	lea	rcx, 0[0+r9*4]
	vcvttss2si	r11d, DWORD PTR [rsi+r9*4]
	add	r10d, r11d
	lea	r10d, [r10+r10*2]
	vcvtsi2ss	xmm0, xmm2, r10d
	vmovss	DWORD PTR [rdi+r9*4], xmm0
	lea	r9d, 1[rdx]
	cmp	eax, r9d
	jle	.L31
	vcvttss2si	r9d, DWORD PTR 4[r8+rcx]
	add	edx, 2
	vcvttss2si	r10d, DWORD PTR 4[rsi+rcx]
	add	r9d, r10d
	lea	r9d, [r9+r9*2]
	vcvtsi2ss	xmm0, xmm2, r9d
	vmovss	DWORD PTR 4[rdi+rcx], xmm0
	cmp	eax, edx
	jle	.L31
	vcvttss2si	eax, DWORD PTR 8[r8+rcx]
	vcvttss2si	edx, DWORD PTR 8[rsi+rcx]
	add	eax, edx
	lea	eax, [rax+rax*2]
	vcvtsi2ss	xmm2, xmm2, eax
	vmovss	DWORD PTR 8[rdi+rcx], xmm2
	ret
.L29:
	vzeroupper
.L31:
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	lea	rcx, 0[0+rax*4]
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L15:
	vcvttss2si	edx, DWORD PTR [r8+rax]
	vcvttss2si	r9d, DWORD PTR [rsi+rax]
	add	edx, r9d
	lea	edx, [rdx+rdx*2]
	vcvtsi2ss	xmm0, xmm2, edx
	vmovss	DWORD PTR [rdi+rax], xmm0
	add	rax, 4
	cmp	rax, rcx
	jne	.L15
	ret
.L17:
	xor	ecx, ecx
	xor	edx, edx
	jmp	.L10
.L32:
	vzeroupper
	jmp	.L13
	.cfi_endproc
.LFE10369:
	.size	_Z10dummy_loopPfS_S_i, .-_Z10dummy_loopPfS_S_i
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB11125:
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
.L34:
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
	jne	.L34
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
.L35:
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
	jne	.L35
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
.LFE11125:
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
.L39:
	mov	rax, rcx
	shr	rax, 30
	xor	rax, rcx
	imul	rax, rax, 1812433253
	lea	ecx, [rax+rdx]
	mov	QWORD PTR [rbx+rdx*8], rcx
	add	rdx, 1
	cmp	rdx, 624
	jne	.L39
	mov	QWORD PTR 4992[rsp], 624
	test	esi, esi
	jle	.L38
	movsx	rsi, esi
	vxorps	xmm4, xmm4, xmm4
	mov	rbp, rdi
	vmovss	xmm3, DWORD PTR .LC12[rip]
	vmovss	xmm1, DWORD PTR .LC13[rip]
	vmovss	xmm5, DWORD PTR .LC14[rip]
	lea	r12, [rdi+rsi*4]
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L53:
	vcvtsi2ss	xmm0, xmm4, rax
.L43:
	vxorps	xmm2, xmm2, xmm2
	vaddss	xmm0, xmm0, xmm2
	vmulss	xmm0, xmm0, xmm3
	vcomiss	xmm0, xmm1
	jnb	.L44
	vmulss	xmm0, xmm0, xmm5
	add	rbp, 4
	vaddss	xmm0, xmm0, xmm1
	vmovss	DWORD PTR -4[rbp], xmm0
	cmp	r12, rbp
	je	.L38
.L45:
	mov	rdx, rcx
.L47:
	cmp	rdx, 623
	ja	.L52
.L41:
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
	jns	.L53
	mov	rdx, rax
	and	eax, 1
	shr	rdx
	or	rdx, rax
	vcvtsi2ss	xmm0, xmm4, rdx
	vaddss	xmm0, xmm0, xmm0
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L52:
	mov	rdi, rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	mov	rdx, QWORD PTR 4992[rsp]
	vmovss	xmm5, DWORD PTR .LC14[rip]
	vxorps	xmm4, xmm4, xmm4
	vmovss	xmm1, DWORD PTR .LC13[rip]
	vmovss	xmm3, DWORD PTR .LC12[rip]
	jmp	.L41
.L44:
	mov	DWORD PTR 0[rbp], 0x411fffff
	add	rbp, 4
	cmp	rbp, r12
	jne	.L45
.L38:
	mov	rax, QWORD PTR 5000[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L54
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
.L54:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10367:
	.size	_Z4initPfii, .-_Z4initPfii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
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
	mov	edx, 400000000
	mov	esi, 32
	push	QWORD PTR -8[r10]
	push	rbp
	mov	rbp, rsp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	push	r15
	push	r14
	push	r13
	push	r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	lea	r12, -64[rbp]
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	mov	rdi, r12
	push	rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	xor	ebx, ebx
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L56
	mov	rbx, QWORD PTR -64[rbp]
.L56:
	mov	edx, 400000000
	mov	esi, 32
	mov	rdi, r12
	xor	r13d, r13d
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L57
	mov	r13, QWORD PTR -64[rbp]
.L57:
	mov	rdi, r12
	mov	edx, 400000000
	mov	esi, 32
	xor	r12d, r12d
	call	posix_memalign@PLT
	test	eax, eax
	jne	.L58
	mov	r12, QWORD PTR -64[rbp]
.L58:
	mov	edx, 123
	mov	esi, 100000000
	mov	rdi, r13
	call	_Z4initPfii
	mov	edx, 321
	mov	esi, 100000000
	mov	rdi, r12
	call	_Z4initPfii
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	mov	edx, 10
	mov	r14, rax
	.p2align 4,,10
	.p2align 3
.L59:
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L60:
	vmovaps	ymm1, YMMWORD PTR 0[r13+rax]
	vaddps	ymm0, ymm1, YMMWORD PTR [r12+rax]
	vmovaps	YMMWORD PTR [rbx+rax], ymm0
	add	rax, 32
	cmp	rax, 400000000
	jne	.L60
	sub	edx, 1
	jne	.L59
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	xmm0, xmm0, xmm0
	movabs	rdx, 4835703278458516699
	sub	rax, r14
	lea	rdi, _ZSt4cout[rip]
	mov	rcx, rax
	imul	rdx
	sar	rcx, 63
	mov	rax, rdx
	sar	rax, 18
	sub	rax, rcx
	vcvtsi2sd	xmm0, xmm0, rax
	vdivsd	xmm0, xmm0, QWORD PTR .LC16[rip]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	r14, rax
	mov	rax, QWORD PTR [rax]
	mov	rax, QWORD PTR -24[rax]
	mov	r15, QWORD PTR 240[r14+rax]
	test	r15, r15
	je	.L76
	cmp	BYTE PTR 56[r15], 0
	je	.L64
	movzx	eax, BYTE PTR 67[r15]
.L65:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc@PLT
	mov	rdi, rax
	call	_ZNSo5flushEv@PLT
	mov	rax, rbx
	lea	rdx, 400000000[rbx]
	vxorps	xmm0, xmm0, xmm0
	.p2align 4,,10
	.p2align 3
.L66:
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
	jne	.L66
	lea	rsi, .LC17[rip]
	mov	edi, 2
	mov	eax, 1
	vcvtss2sd	xmm0, xmm0, xmm0
	call	__printf_chk@PLT
	mov	rdi, rbx
	call	free@PLT
	mov	rdi, r13
	call	free@PLT
	mov	rdi, r12
	call	free@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L75
	add	rsp, 32
	xor	eax, eax
	pop	rbx
	pop	r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsp, -8[r10]
	.cfi_def_cfa 7, 8
	ret
.L64:
	.cfi_restore_state
	mov	rdi, r15
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR [r15]
	mov	esi, 10
	mov	rdi, r15
	call	[QWORD PTR 48[rax]]
	jmp	.L65
.L76:
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L75
	call	_ZSt16__throw_bad_castv@PLT
.L75:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10370:
	.size	main, .-main
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
	.section	.rodata.cst8
	.align 8
.LC16:
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
