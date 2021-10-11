# MatrixASM
```Assembly
;/************************************************************************
;**  Program Name:   Matrix ASM                                         **
;**  Version Number: V1.0                                               **
;**  Copyright (C):  September 6, 2010  Richard W. Allen                **
;**  Date Started:   September 1, 2010                                  **
;**  Date Ended:     September 6, 2010                                  **
;**  Author:         Richard W. Allen                                   **
;**  Webpage:        http://www.richardallenonline.com                  **
;**  IDE:            RadASM 3.0.0.7                                     **
;**  Compiler:	     JWASM 2.03                                         **
;**  Langage:        MASM                                               **
;**  License:        GNU GENERAL PUBLIC LICENSE Version 2               **
;**                  see license.txt for for detail                     **
;*************************************************************************/
```

Download JWASM and win32inc from http://www.japheth.de
Download POLink from it is a part of the Pelles development kit http://www.smorgasbordet.com/pellesc/

add them to you Path system variables
(right Click "My COmputer">"Properties">"Advanced" tab>"Environment Variables">
select "Path" under "System variables">press the "Edit Botton">add the path of to your JWASM.exe and POLink.exe install)

in the install directory of your win32inc run MSVCRT.bat, KERNEL32.bat and USER32.bat

go into the MatrixASM.inc file and change the include and includelib lines to the install directory of your win32inc install

finally run Build.bat or download RadASM 3.0.0.7 form https://fbedit.svn.sourceforge.net/svnroot/fbedit/RadASM30/Release/RadASM.zip
and open MatrixASM.prra project file with RadASM.
