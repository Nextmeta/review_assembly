/*
 * file name: ssefloat.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 01:47:25 PM CST
 */

.section .data
value1:
	.float 12.34, 12.11, 12.12, 12.13
format:
	.asciz "%f%f%f%f\n"
.section .bss
.lcomm data, 16
.section .text
.globl main
main:
	movups 	value1, %xmm0
	movups 	%xmm0, data


	pushl 	$0
	call 	exit
