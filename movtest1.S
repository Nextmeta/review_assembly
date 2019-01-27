/*
 * file name: movtest1.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 10:24:37 PM CST
 */

.section .data
value:
	.int 1
format:
	.asciz "The value is: %d\n"
.section .text
.globl main
main:
	movl	value, %ecx
	pushl 	%ecx
	pushl 	$format 
	call 	printf
	addl 	$8, %esp 

	movl 	$1, %eax
	movl 	$0, %ebx
	int 	$0x80
