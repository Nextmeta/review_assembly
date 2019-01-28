/*
 * file name: bubblesort.S
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Mon 28 Jan 2019 08:50:41 AM CST
 */

.section .data
values:
	.int 5, 2, 4, 6, 1, 3
format:
	.asciz "%d "
newline:
	.asciz "\n"
.section .text
.globl main
main:
	movl 	$values, %esi
	movl 	$6, %ecx
	movl 	$6, %ebx
loop:
	movl 	(%esi), %eax
	cmpl 	%eax, 4(%esi)
	jge 	goback
	xchg 	%eax, 4(%esi)
	movl 	%eax, (%esi)
goback:
	addl 	$4, %esi 
	decl 	%ebx 
	jnz 	loop 
	dec 	%ecx
	jz 	end 
	movl 	$values, %esi 
	movl 	%ecx, %ebx
	jmp 	loop
end:
	movl 	$0, %edi 
lp:		
	movl 	values(, %edi, 4), %eax
	pushl 	%eax
	pushl 	$format
	call 	printf
	inc 	%edi 
	addl 	$8, %esp 
	cmpl 	$6, %edi 
	jl 	lp 
	
	pushl 	$newline
	call 	printf
	addl 	$4, %esp 

	pushl 	$0
	call 	exit 
