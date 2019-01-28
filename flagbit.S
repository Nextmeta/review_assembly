/*
 * file name: flagbit.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 09:28:13 AM CST
 */

.section .data
format1:
	.asciz "Zero flag test successful\n"
format2:
	.asciz "Overflow flag test successful\n"
format3:
	.asciz "Parity flag test successful\n"
.section .text
.globl main
main:
	movl 	$30, %eax
	subl 	$30, %eax
	jz 	zero_flag

	pushl 	$0
	call 	exit
zero_flag:
	pushl 	$format1
	call 	printf
	addl 	$4, %esp
	
	movb 	$0x7f, %bl
	addb 	$10, %bl 
	jo	overflow_flag
	
	pushl 	$0
	call 	exit
overflow_flag:
	pushl 	$format2
	call 	printf
	addl 	$4, %esp 
	
	movl 	$4, %ebx
	subl 	$1, %ebx 		# 3-> 11(2)   	
	jp 	parity_flag 		# parity flag bit 
	
	pushl 	$0
	call 	exit
parity_flag:
	pushl 	$format3
	call 	printf
	addl 	$4, %esp 

	pushl 	$0
	call 	exit 
