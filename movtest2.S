/*
 * file name: movtest2.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 10:28:15 PM CST
 */

.section .data
format:
	.asciz "%d "
newline:
	.asciz "\n"
values:
	.int 1, 2, 3, 4, 5
.section .text
.globl main
main:
	movl 	$0, %edi
loop:
	movl 	values(, %edi, 4), %eax
	pushl 	%eax
	pushl 	$format
	call 	printf
	addl 	$8, %esp
	inc 	%edi
	cmpl 	$5, %edi
	jl	loop
	
	pushl 	$newline
	call 	printf
	addl 	$4, %esp

	movl 	$1, %eax
	movl 	$0, %ebx
	int 	$0x80
