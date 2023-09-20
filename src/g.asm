%ifidn __OUTPUT_FORMAT__, win64
%define r1 rcx
%define r2 rdx
%define r3 r8
%define r4 r9
%elifidn __OUTPUT_FORMAT__, elf64
%define r1 rdi
%define r2 rsi
%define r3 rdx
%define r4 rcx
%define r5 r8
%define r6 r9
%endif

extern puts

global main

section .rodata
str: db "hw", 0

section .text
main:
	mov r1, str
	call puts