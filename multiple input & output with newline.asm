
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; multiple input and output with newline


mov ah,1
int 21h 
mov bl, al

mov ah, 1
int 21h
mov bh, al

mov ah,1
int 21h
mov cl, al


mov ah,2
mov dl, 10
int 21h
mov dl, 13
int 21h


mov ah,2
mov dl, bl
int 21h

mov ah,2
mov dl, bh
int 21h

mov ah,2
mov dl, cl
int 21h 


ret



