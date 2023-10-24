
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


;this 3 line is for input
mov ah, 1
int 21h        
mov bl, al



; this 5 lines are for newline

mov ah,2 ; for output
mov dl, 10 ; for newlinr    
int 21h    
mov dl,13  ; for remove blank space
int 21h



;this 3 line is for output
mov ah, 2
mov dl, bl    
int 21h


ret




