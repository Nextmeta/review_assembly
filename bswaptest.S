/*
 * file name: bswaptest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 11:16:54 PM CST
 */

.section .data
format:
	.asciz "%#x\n"
.section .text
.globl main
main:
	movl 	$0x12345678, %ebx 
	pushl 	%ebx
	pushl 	$format
	call 	printf
	addl 	$8, %esp

	bswap 	%ebx
	pushl 	%ebx
	pushl 	$format
	call 	printf
	addl 	$8, %esp
	
	pushl 	$0
	call 	exit
