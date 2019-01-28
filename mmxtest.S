/*
 * file name: mmxtest.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 12:58:59 PM CST
 */

.section .data
value1:
	.int 1, -1
value2:
	.byte 0x10, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
.section .text
.globl main
main:
	movq 	value1, %mm0
	movq 	value2, %mm1
	pushl 	$0
	call 	exit
