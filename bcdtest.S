/*
 * file name: bcdtest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 01:08:07 PM CST
 */

.section .data
values:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x10
value:
	.int 2
format:
	.asciz "%#x\n%#x\n"
.section .text
.globl main
main:
	fbld 	values
	fimul 	value
	fbstp 	values

	movl 	$1, %edi
	pushl 	values(, %edi, 4)
	pushl  	values
	pushl 	$format
	call 	printf
	addl 	$8, %esp

	pushl 	$0
	call 	exit 
