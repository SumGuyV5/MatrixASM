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
include	\jwasm\Win32Inc135\Include\windows.inc
include \jwasm\Win32Inc135\Include\stdlib.inc		;use the c lib for srand and rand

includelib	\jwasm\Win32Inc135\Lib\kernel32.lib
includelib	\jwasm\Win32Inc135\Lib\user32.lib
includelib	\jwasm\Win32Inc135\Lib\MSVCRT.lib

random PROTO :DWORD

.const

.data?

.data
OutputH		HANDLE	NULL

position	COORD	<0, 0>

dwWritten	DWORD	NULL
zero	   	db		"0"
one			db		"1"