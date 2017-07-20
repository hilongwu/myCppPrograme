	.file	"returnlambda.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	_ZnwmPv, .-_ZnwmPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZNSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessEv
	.type	_ZNSt9_Any_data9_M_accessEv, @function
_ZNSt9_Any_data9_M_accessEv:
.LFB1657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1657:
	.size	_ZNSt9_Any_data9_M_accessEv, .-_ZNSt9_Any_data9_M_accessEv
	.section	.text._ZNKSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNKSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNKSt9_Any_data9_M_accessEv
	.type	_ZNKSt9_Any_data9_M_accessEv, @function
_ZNKSt9_Any_data9_M_accessEv:
.LFB1658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1658:
	.size	_ZNKSt9_Any_data9_M_accessEv, .-_ZNKSt9_Any_data9_M_accessEv
	.section	.text._ZNSt14_Function_baseC2Ev,"axG",@progbits,_ZNSt14_Function_baseC5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseC2Ev
	.type	_ZNSt14_Function_baseC2Ev, @function
_ZNSt14_Function_baseC2Ev:
.LFB1683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1683:
	.size	_ZNSt14_Function_baseC2Ev, .-_ZNSt14_Function_baseC2Ev
	.weak	_ZNSt14_Function_baseC1Ev
	.set	_ZNSt14_Function_baseC1Ev,_ZNSt14_Function_baseC2Ev
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseD2Ev
	.type	_ZNSt14_Function_baseD2Ev, @function
_ZNSt14_Function_baseD2Ev:
.LFB1686:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1686
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	$3, %edx
	movq	%rcx, %rdi
	call	*%rax
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1686:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt14_Function_baseD2Ev,"aG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
.LLSDA1686:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1686-.LLSDACSB1686
.LLSDACSB1686:
.LLSDACSE1686:
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.size	_ZNSt14_Function_baseD2Ev, .-_ZNSt14_Function_baseD2Ev
	.weak	_ZNSt14_Function_baseD1Ev
	.set	_ZNSt14_Function_baseD1Ev,_ZNSt14_Function_baseD2Ev
	.section	.text._ZNKSt14_Function_base8_M_emptyEv,"axG",@progbits,_ZNKSt14_Function_base8_M_emptyEv,comdat
	.align 2
	.weak	_ZNKSt14_Function_base8_M_emptyEv
	.type	_ZNKSt14_Function_base8_M_emptyEv, @function
_ZNKSt14_Function_base8_M_emptyEv:
.LFB1688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1688:
	.size	_ZNKSt14_Function_base8_M_emptyEv, .-_ZNKSt14_Function_base8_M_emptyEv
	.text
	.align 2
	.type	_ZZ15returnLambdaSumvENKUliiE_clEii, @function
_ZZ15returnLambdaSumvENKUliiE_clEii:
.LFB1718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1718:
	.size	_ZZ15returnLambdaSumvENKUliiE_clEii, .-_ZZ15returnLambdaSumvENKUliiE_clEii
	.section	.text._ZNSt8functionIFiiiEED2Ev,"axG",@progbits,_ZNSt8functionIFiiiEED5Ev,comdat
	.align 2
	.weak	_ZNSt8functionIFiiiEED2Ev
	.type	_ZNSt8functionIFiiiEED2Ev, @function
_ZNSt8functionIFiiiEED2Ev:
.LFB1722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1722:
	.size	_ZNSt8functionIFiiiEED2Ev, .-_ZNSt8functionIFiiiEED2Ev
	.weak	_ZNSt8functionIFiiiEED1Ev
	.set	_ZNSt8functionIFiiiEED1Ev,_ZNSt8functionIFiiiEED2Ev
	.text
	.globl	_Z15returnLambdaSumv
	.type	_Z15returnLambdaSumv, @function
_Z15returnLambdaSumv:
.LFB1717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rax, %rdi
	call	_ZNSt8functionIFiiiEEC1IZ15returnLambdaSumvEUliiE_vvEET_
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L18
	call	__stack_chk_fail
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1717:
	.size	_Z15returnLambdaSumv, .-_Z15returnLambdaSumv
	.globl	main
	.type	main, @function
main:
.LFB1724:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1724
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_Z15returnLambdaSumv
.LEHE0:
	leaq	-64(%rbp), %rax
	movl	$9, %edx
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNKSt8functionIFiiiEEclEii
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE1:
	movl	$0, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFiiiEED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L22
	jmp	.L24
.L23:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFiiiEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L24:
	call	__stack_chk_fail
.L22:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1724:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1724:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1724-.LLSDACSB1724
.LLSDACSB1724:
	.uleb128 .LEHB0-.LFB1724
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1724
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L23-.LFB1724
	.uleb128 0
	.uleb128 .LEHB2-.LFB1724
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1724:
	.text
	.size	main, .-main
	.section	.text._ZNSt15binary_functionIiiiEC2Ev,"axG",@progbits,_ZNSt15binary_functionIiiiEC5Ev,comdat
	.align 2
	.weak	_ZNSt15binary_functionIiiiEC2Ev
	.type	_ZNSt15binary_functionIiiiEC2Ev, @function
_ZNSt15binary_functionIiiiEC2Ev:
.LFB1785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1785:
	.size	_ZNSt15binary_functionIiiiEC2Ev, .-_ZNSt15binary_functionIiiiEC2Ev
	.weak	_ZNSt15binary_functionIiiiEC1Ev
	.set	_ZNSt15binary_functionIiiiEC1Ev,_ZNSt15binary_functionIiiiEC2Ev
	.section	.text._ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev,"axG",@progbits,_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC5Ev,comdat
	.align 2
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev
	.type	_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev, @function
_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev:
.LFB1787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15binary_functionIiiiEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1787:
	.size	_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev, .-_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIiIiiEEC2Ev
	.set	_ZNSt31_Maybe_unary_or_binary_functionIiIiiEEC2Ev,_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC1Ev
	.set	_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC1Ev,_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIiIiiEEC1Ev
	.set	_ZNSt31_Maybe_unary_or_binary_functionIiIiiEEC1Ev,_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC1Ev
	.text
	.type	_ZSt4moveIRZ15returnLambdaSumvEUliiE_EONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIRZ15returnLambdaSumvEUliiE_EONSt16remove_referenceIT_E4typeEOS3_:
.LFB1789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1789:
	.size	_ZSt4moveIRZ15returnLambdaSumvEUliiE_EONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRZ15returnLambdaSumvEUliiE_EONSt16remove_referenceIT_E4typeEOS3_
	.align 2
	.type	_ZNSt8functionIFiiiEEC2IZ15returnLambdaSumvEUliiE_vvEET_, @function
_ZNSt8functionIFiiiEEC2IZ15returnLambdaSumvEUliiE_vvEET_:
.LFB1790:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1790
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt31_Maybe_unary_or_binary_functionIiJiiEEC2Ev
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseC2Ev
	leaq	16(%rbp), %rdi
	call	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E21_M_not_empty_functionIS1_EEbRKT_
	testb	%al, %al
	je	.L33
	leaq	16(%rbp), %rdi
	call	_ZSt4moveIRZ15returnLambdaSumvEUliiE_EONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_
.LEHE3:
	movq	-24(%rbp), %rax
	movq	$_ZNSt17_Function_handlerIFiiiEZ15returnLambdaSumvEUliiE_E9_M_invokeERKSt9_Any_dataOiS6_, 24(%rax)
	movq	-24(%rbp), %rax
	movq	$_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, 16(%rax)
	jmp	.L33
.L32:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L33:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1790:
	.section	.gcc_except_table
.LLSDA1790:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1790-.LLSDACSB1790
.LLSDACSB1790:
	.uleb128 .LEHB3-.LFB1790
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L32-.LFB1790
	.uleb128 0
	.uleb128 .LEHB4-.LFB1790
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1790:
	.text
	.size	_ZNSt8functionIFiiiEEC2IZ15returnLambdaSumvEUliiE_vvEET_, .-_ZNSt8functionIFiiiEEC2IZ15returnLambdaSumvEUliiE_vvEET_
	.set	_ZNSt8functionIFiiiEEC1IZ15returnLambdaSumvEUliiE_vvEET_,_ZNSt8functionIFiiiEEC2IZ15returnLambdaSumvEUliiE_vvEET_
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB1796:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1796:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNKSt8functionIFiiiEEclEii,"axG",@progbits,_ZNKSt8functionIFiiiEEclEii,comdat
	.align 2
	.weak	_ZNKSt8functionIFiiiEEclEii
	.type	_ZNKSt8functionIFiiiEEclEii, @function
_ZNKSt8functionIFiiiEEclEii:
.LFB1795:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt14_Function_base8_M_emptyEv
	testb	%al, %al
	je	.L37
	call	_ZSt25__throw_bad_function_callv
.L37:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %r12
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1795:
	.size	_ZNKSt8functionIFiiiEEclEii, .-_ZNKSt8functionIFiiiEEclEii
	.text
	.type	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E21_M_not_empty_functionIS1_EEbRKT_, @function
_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E21_M_not_empty_functionIS1_EEbRKT_:
.LFB1852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1852:
	.size	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E21_M_not_empty_functionIS1_EEbRKT_, .-_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E21_M_not_empty_functionIS1_EEbRKT_
	.type	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_, @function
_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_:
.LFB1853:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZ15returnLambdaSumvEUliiE_EONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_St17integral_constantIbLb1EE
	addq	$16, %rsp
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L42
	call	__stack_chk_fail
.L42:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1853:
	.size	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_, .-_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_
	.type	_ZNSt17_Function_handlerIFiiiEZ15returnLambdaSumvEUliiE_E9_M_invokeERKSt9_Any_dataOiS6_, @function
_ZNSt17_Function_handlerIFiiiEZ15returnLambdaSumvEUliiE_E9_M_invokeERKSt9_Any_dataOiS6_:
.LFB1854:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %r12d
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E14_M_get_pointerERKSt9_Any_data
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZZ15returnLambdaSumvENKUliiE_clEii
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1854:
	.size	_ZNSt17_Function_handlerIFiiiEZ15returnLambdaSumvEUliiE_E9_M_invokeERKSt9_Any_dataOiS6_, .-_ZNSt17_Function_handlerIFiiiEZ15returnLambdaSumvEUliiE_E9_M_invokeERKSt9_Any_dataOiS6_
	.type	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation:
.LFB1855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-52(%rbp), %eax
	cmpl	$1, %eax
	je	.L47
	cmpl	$1, %eax
	jg	.L48
	testl	%eax, %eax
	je	.L49
	jmp	.L46
.L48:
	cmpl	$2, %eax
	je	.L50
	cmpl	$3, %eax
	je	.L51
	jmp	.L46
.L49:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	movq	$_ZTIZ15returnLambdaSumvEUliiE_, (%rax)
	jmp	.L46
.L47:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPZ15returnLambdaSumvEUliiE_EERT_v
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E14_M_get_pointerERKSt9_Any_data
	movq	%rax, (%rbx)
	jmp	.L46
.L50:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%r8
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E8_M_cloneERSt9_Any_dataRKS3_St17integral_constantIbLb1EE
	addq	$16, %rsp
	jmp	.L46
.L51:
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE
	addq	$16, %rsp
	nop
.L46:
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L53
	call	__stack_chk_fail
.L53:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1855:
	.size	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_St17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_St17integral_constantIbLb1EE:
.LFB1888:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZ15returnLambdaSumvEUliiE_EONSt16remove_referenceIT_E4typeEOS3_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	movq	%rax, %rsi
	movl	$1, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1888:
	.size	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_St17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E15_M_init_functorERSt9_Any_dataOS1_St17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E14_M_get_pointerERKSt9_Any_data, @function
_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E14_M_get_pointerERKSt9_Any_data:
.LFB1889:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERKT_v
	movq	%rax, %rdi
	call	_ZSt11__addressofIKZ15returnLambdaSumvEUliiE_EPT_RS2_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1889:
	.size	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E14_M_get_pointerERKSt9_Any_data, .-_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E14_M_get_pointerERKSt9_Any_data
	.section	.text._ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.type	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, @function
_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v:
.LFB1890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1890:
	.size	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, .-_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.text
	.align 2
	.type	_ZNSt9_Any_data9_M_accessIPZ15returnLambdaSumvEUliiE_EERT_v, @function
_ZNSt9_Any_data9_M_accessIPZ15returnLambdaSumvEUliiE_EERT_v:
.LFB1891:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1891:
	.size	_ZNSt9_Any_data9_M_accessIPZ15returnLambdaSumvEUliiE_EERT_v, .-_ZNSt9_Any_data9_M_accessIPZ15returnLambdaSumvEUliiE_EERT_v
	.type	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E8_M_cloneERSt9_Any_dataRKS3_St17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E8_M_cloneERSt9_Any_dataRKS3_St17integral_constantIbLb1EE:
.LFB1892:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERKT_v
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	movq	%rax, %rsi
	movl	$1, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1892:
	.size	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E8_M_cloneERSt9_Any_dataRKS3_St17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E8_M_cloneERSt9_Any_dataRKS3_St17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE:
.LFB1893:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERT_v
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1893:
	.size	_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIZ15returnLambdaSumvEUliiE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE
	.align 2
	.type	_ZNKSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERKT_v, @function
_ZNKSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERKT_v:
.LFB1918:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1918:
	.size	_ZNKSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERKT_v, .-_ZNKSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERKT_v
	.type	_ZSt11__addressofIKZ15returnLambdaSumvEUliiE_EPT_RS2_, @function
_ZSt11__addressofIKZ15returnLambdaSumvEUliiE_EPT_RS2_:
.LFB1919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1919:
	.size	_ZSt11__addressofIKZ15returnLambdaSumvEUliiE_EPT_RS2_, .-_ZSt11__addressofIKZ15returnLambdaSumvEUliiE_EPT_RS2_
	.align 2
	.type	_ZNSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERT_v, @function
_ZNSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERT_v:
.LFB1921:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1921:
	.size	_ZNSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERT_v, .-_ZNSt9_Any_data9_M_accessIZ15returnLambdaSumvEUliiE_EERT_v
	.section	.rodata
	.align 16
	.type	_ZTSZ15returnLambdaSumvEUliiE_, @object
	.size	_ZTSZ15returnLambdaSumvEUliiE_, 28
_ZTSZ15returnLambdaSumvEUliiE_:
	.string	"*Z15returnLambdaSumvEUliiE_"
	.align 8
	.type	_ZTIZ15returnLambdaSumvEUliiE_, @object
	.size	_ZTIZ15returnLambdaSumvEUliiE_, 16
_ZTIZ15returnLambdaSumvEUliiE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZ15returnLambdaSumvEUliiE_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1946:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L75
	cmpl	$65535, -8(%rbp)
	jne	.L75
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L75:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1946:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z15returnLambdaSumv, @function
_GLOBAL__sub_I__Z15returnLambdaSumv:
.LFB1947:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1947:
	.size	_GLOBAL__sub_I__Z15returnLambdaSumv, .-_GLOBAL__sub_I__Z15returnLambdaSumv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z15returnLambdaSumv
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
