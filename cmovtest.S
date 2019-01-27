/*
 * file name: cmovtest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 11:10:54 PM CST
 */

.section .data
format:
	.asciz "The max value is %d\n"
values:
	.int 5, 2, 1, 6, 3
.section .text
.globl main
main:
	movl 	values, %ebx
	movl 	$1, %edi
loop:
	movl 	values(, %edi, 4), %eax
	cmp 	%ebx, %eax 
	cmova 	%eax, %ebx
	inc 	%edi
	cmp 	$5, %edi
	jl 	loop 
	
	pushl 	%ebx
	pushl 	$format
	call 	printf
	addl 	$8, %esp
	
	pushl 	$0
	call  	exit 
