/*
 * file name: fill.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 10:21:33 PM CST
 */

.section .data
buffer:
	.fill 	10000
.section .text
.globl main
main:
	movl 	$1, %eax
	movl 	$0, %ebx
	int 	$0x80
