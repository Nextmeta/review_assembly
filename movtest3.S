/*
 * file name: movtest3.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 10:38:17 PM CST
 */

.section .data
format:
	.asciz "%d\n"
format2:
	.asciz "%d "
newline:
	.asciz "\n"
values:
	.int 1, 2, 3, 4, 5
.section .text
.globl main
main:
	movl 	values, %eax
	pushl 	%eax
	pushl 	$format
	call 	printf
	addl 	$8, %esp 

	movl 	$values, %edi
	movl 	$6, 4(%edi)
	movl 	$1, %edi
	movl 	values(, %edi, 4), %ebx 
	pushl 	%ebx
	pushl 	$format
	call 	printf
	addl 	$8, %esp

	movl 	$0, %edi 
loop:
	movl 	values(, %edi, 4), %ebx
	pushl 	%ebx
	pushl 	$format2
	call 	printf
	addl 	$8, %esp
	inc 	%edi 
	cmpl 	$5, %edi
	jl 	loop

	pushl 	$newline
	call 	printf 

	pushl 	$0
	call 	exit

