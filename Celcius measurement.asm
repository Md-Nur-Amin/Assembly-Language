org 100h

; C=(F-32)*5/9 + 1  ;where F=1000

mov ax, 1000
mov bx, 32
sub ax, bx  ; ax=ax-bx

mov bx, 5
mul bx      ; bx=bx*5

mov bx, 9
div bx      ; bx=bx/9

add bx, 1   ; bx= bx+1
 
ret




