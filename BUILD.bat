@echo off
set name=MatrixASM

if exist %name%.obj del %name%.obj

if exist %name%.RES del %name%.RES

if exist %name%.exe del %name%.exe

jwasm /c /coff /Cp %name%.asm

if errorlevel 1 goto errasm

polink /SUBSYSTEM:CONSOLE /RELEASE /VERSION:4.0 /OUT:"%name%.exe" "%name%.obj"

if errorlevel 1 goto errlink

dir
goto TheEnd

:errlink
echo _
echo Link error
goto TheEnd

:errasm
echo _
echo Assemble Error
Pause

:TheEnd