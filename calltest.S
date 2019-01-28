/*
 * file name: calltest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 09:23:37 AM CST
 */

.section .data
format:
	.asciz "This is section %d\n"
.section .text
.globl main
main:
	pushl 	$1
	pushl 	$format
	call 	printf
	addl 	$8, %esp 
	
	call 	section2

	pushl 	$0
	call 	exit 
section2:
	pushl 	%ebp
	movl 	%esp, %ebp 
	pushl 	$2
	pushl 	$format
	call 	printf
	addl 	$8, %esp 
	movl 	%ebp, %esp 
	popl 	%ebp 
	ret 
