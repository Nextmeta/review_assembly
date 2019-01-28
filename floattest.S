/*
 * file name: floattest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 01:20:00 PM CST
 */

.section .data
value1:
	.double 12.34
value2:
	.double 123.123
format:
	.asciz "%f\n"
.section .bss
	.lcomm data, 8
	.lcomm data2, 4
.section .text
.globl main
main:
	flds 	value1
	fldl 	value2
	fstl 	data 
	
	movl 	$data, %eax
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf
	addl 	$12, %esp
	
	fstl 	data2 
	movl 	$data2, %eax 
	
	pushl 	4(%eax)
	pushl 	(%eax)
	pushl 	$format
	call 	printf
	addl 	$12, %esp 
	pushl 	$0
	call 	exit
