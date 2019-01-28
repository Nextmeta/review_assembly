/*
 * file name: inttest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 12:51:46 PM CST
 */

.section .data
value:
	.int -100
format:
	.asciz "%d\n"
.section .text
.globl main
main:
	movl	$-333, %ecx
	pushl 	%ecx
	pushl 	$format
	call 	printf
	addl 	$8, %esp

	movl 	$0xffc2, %ebx
	pushl 	%ebx
	pushl 	$format
	call 	printf
	addl 	$8, %esp
	
	pushl 	value 
	pushl 	$format
	call 	printf
	addl 	$8, %esp

	pushl 	$0
	call 	exit
