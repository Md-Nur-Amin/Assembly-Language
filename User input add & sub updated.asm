org 100h

; print string with newline (without blank space) 

.data

msg_1 db 'Enter a number $'    ; here msg_1 or other name for msg
                               ; can be taken
msg_2 db ,10,13, 'Enter another number $'

msg_3 db ,10,13, 'Addition: $'
msg_4 db ,10,13, 'Subtraction: $'

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


;Output of msg_2 string
lea dx, msg_2
mov ah,9
int 21h


;Second input
mov ah,1
int 21h
mov bh, al


;Output of msg_3 string
lea dx, msg_3
mov ah,9
int 21h



;this 5 lines are for addition operation and showing the result
mov ah,2; for showing output of an inut
add bl, bh  ; bl= bl+bh ; addition operation
sub bl,48   ; subtract 48 for showing number value
mov dl, bl  ; store the result into dl for output
int 21h     ; interupt


;Output of msg_4 string
lea dx, msg_4
mov ah,9
int 21h



;subtraction operation
mov ah,2

sub bl, bh
add bl,48
sub bl,bh
add bl,48
mov dl, bl
int 21h

ret








