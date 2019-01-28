/*
 * file name: looptest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 09:43:46 AM CST
 */

.section .data
format:
	.asciz "The value is: %d\n"
.section .text
.globl main
main:
	movl 	$100, %ecx
	movl 	$0, %eax
loop1:
	addl 	%ecx, %eax 
	loop 	loop1 
	pushl 	%eax 
	pushl 	$format
	call 	printf
	addl 	$8, %esp
	
	pushl 	$0
	call 	exit
