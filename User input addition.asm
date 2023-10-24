
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; print string with newline (without blank space) 

.data

msg_1 db 'Enter a number $'       ; here msg_1 or other name for msg
                               ; can be taken
msg_2 db 'Enter another number $'

msg_3 db 'output: $'

.code

; this two line is for string data sagement
mov ax, @data       
mov ds, ax          ; ds=data sagement



;Output of msg_1 string
lea dx, msg_1      ;lea= load effective address
mov ah,9
int 21h


;First input
mov ah,1
int 21h
mov bl, al



;newline
mov ah,2
mov dl, 10
int 21h
mov dl, 13
int 21h



;Output of msg_2 string
lea dx, msg_2
mov ah,9
int 21h


;Second input
mov ah,1
int 21h
mov bh, al



;newline
mov ah,2
mov dl, 10
int 21h
mov dl, 13
int 21h



;Output of msg_2 string
lea dx, msg_3
mov ah,9
int 21h




;this 5 lines are for addition operation and showing the result
mov ah,2; for showing output of an inut
add bl, bh  ; bl= bl+bh ; addition operation
sub bl,48   ; subtract 48 for showing number value
mov dl, bl  ; store the result into dl for output
int 21h     ; interupt




ret




