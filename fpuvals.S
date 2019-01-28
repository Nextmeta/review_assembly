/*
 * file name: fpuvals.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 01:26:41 PM CST
 */

.section .data
format:
	.asciz "%lf\n"
.section .bss
.lcomm data, 8
.section .text 
.globl main
main:
	fld1				# 1.0
	fstl 	data 
	leal 	data, %eax 
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf
	
	fldl2t				# log210
	fstl 	data
	leal 	data, %eax
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf

	fldl2e				# log2e
	fstl 	data
	leal 	data, %eax
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf
	
	fldpi				# PI 
	fstl 	data
	leal 	data, %eax
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf

	fldlg2				# lg2
	fstl 	data
	leal 	data, %eax
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf
			
	fldln2 				# ln2 
	fstl 	data
	leal 	data, %eax
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf
	
	pushl 	$0
	call 	exit
