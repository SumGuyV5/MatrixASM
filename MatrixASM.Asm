;/************************************************************************
;**  Program Name:   Matrix ASM				      						**
;**  Version Number: V1.0                                     			**
;**  Copyright (C):  September 6, 2010  Richard W. Allen	   			**
;**  Date Started:   September 1, 2010                       			**
;**  Date Ended:     September 6, 2010                   				**
;**  Author:         Richard W. Allen                         			**
;**  Webpage:        http://www.richardallenonline.com					**
;**  IDE:            RadASM 3.0.0.7										**
;**  Compiler:		 JWASM 	2.03			      						**
;**  Langage:        MASM					     						**
;**  License:	     GNU GENERAL PUBLIC LICENSE Version 2				**
;**		     		 see license.txt for for detail						**
;*************************************************************************/
.386
.model flat, stdcall
option casemap:none

include MatrixASM.inc

.code

start:
	invoke GetStdHandle, STD_OUTPUT_HANDLE
	
	mov OutputH, eax

	invoke GetTickCount
	invoke srand, eax
	
	.repeat
		invoke random, 79 + 1
		mov position.X, ax
		
		invoke random, 23 + 1
		mov position.Y, ax
		
		invoke random, 2
		.if eax == 0
			invoke SetConsoleTextAttribute, OutputH, 2
		.else
			invoke SetConsoleTextAttribute, OutputH, 10
		.endif
		
		invoke SetConsoleCursorPosition, OutputH, DWord ptr [position]
		
		invoke random, 2
		.if eax == 0
			invoke WriteConsole, OutputH, addr zero, sizeof zero, addr dwWritten, 0
		.else
			invoke WriteConsole, OutputH, addr one, sizeof one, addr dwWritten, 0
		.endif
		
		invoke GetKeyState, VK_RETURN

	.until eax & 08000h

	invoke ExitProcess, 0
	
random PROC base:DWORD
	
	invoke rand
	xor edx, edx          
	div base
	
	mov eax, edx
	ret

random ENDP

end start
