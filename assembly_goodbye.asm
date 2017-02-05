.386
.model flat, stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib
include \masm32\include\user32.inc
includelib \masm32\lib\user32.lib

.data

msg db "Goodbye world!", 0
cpt db "PROGRAM!", 0

.code
start:

invoke MessageBox, NULL, addr msg, addr cpt, MB_OK + MB_ICONINFORMATION


invoke ExitProcess, NULL

end start