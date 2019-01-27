/*
 * file name: bss.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Sun 27 Jan 2019 10:19:20 PM CST
 */

.section .data
.section .bss
.lcomm buffer, 10000

.section .text
.globl main
main:
	movl 	$1, %eax
	movl 	$0, %ebx
	int 	$0x80
