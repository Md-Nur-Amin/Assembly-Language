
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; input two numbers and print them

.data
.code

mov ah, 1; input
int 21h
mov bl, al ; al resister data stored in bl resister


mov ah,1 ; another input
int 21h
mov bh,al ; al resister data stored in ah resister 


mov ah,2  ; show output
mov dl,bl ; bl resister data printer by dl resister
int 21h   ; interupt


mov ah,2
mov dl, bh;bh resister data printed by dl resister 
int 21h  


ret





