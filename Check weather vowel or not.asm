org 100h

;check whether the given character is vowel or not 

.data

msg_1        db 'Enter an alphabet $'
msg_2 db ,10,13, 'vowel: $'
msg_3 db ,10,13, 'Not a vowel $'


.code
mov ax, @data
mov ds, ax


;msg_1
lea dx, msg_1
mov ah, 9
int 21h


;input
mov ah,1
int 21h 
mov bl, al

;check
cmp al , 'a'
je vowel
cmp al , 'e'
je vowel
cmp al , 'i'
je vowel
cmp al , 'o'
je vowel
cmp al , 'u'
je vowel  


cmp al , 'A'
je vowel
cmp al , 'E'
je vowel
cmp al , 'I'
je vowel
cmp al , 'O'
je vowel
cmp al , 'U'
je vowel


lea dx, msg_3
mov ah, 9
int 21h
jmp exit

;
vowel:
lea dx, msg_2
mov ah, 9
int 21h


exit:

 

ret


