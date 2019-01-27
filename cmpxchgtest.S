/*
 * file name: cmpxchgtest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 11:20:51 PM CST
 */

.section .data
value:
	.int 10
format:
	.asciz "%d\n"
.section .text
.globl main
main:
	movl 	$5, %eax
	movl 	$8, %ebx
	cmpxchg %ebx, value        # eax != value
	
	pushl 	%eax
	pushl 	$format 
	call 	printf
	addl 	$8, %esp

	movl 	$10, %eax
	cmpxchg %ebx, value	   # eax != value
	
	pushl 	value
	pushl 	$format
	call 	printf
	addl 	$8, %esp

	pushl 	$0
	call 	exit
