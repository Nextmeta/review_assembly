/*
 * file name: cmpxchg8btest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 08:42:25 AM CST
 */

.section .data
data:
	.byte 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88
format:
	.asciz "%#x "
newline:
	.asciz "\n"
.section .text
.globl main
main:
	movl 	$0x44332211, %eax
	movl 	$0x88776655, %edx
	movl 	$0x11111111, %ebx
	movl 	$0x22222222, %ecx

	cmpxchg8b data
	movl 	$0, %edi 
loop:
	movl 	data(, %edi, 4), %eax 
	pushl 	%eax 
	pushl 	$format 
	call 	printf
	addl 	$8, %esp 
	inc 	%edi 
	cmpl 	$2, %edi 
	jl 	loop

	pushl 	$newline
	call 	printf
	addl 	$4, %esp 

	pushl 	$0
	call 	exit 
