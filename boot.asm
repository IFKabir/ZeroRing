[org 0x7c00]

mov bp, 0x8000
mov sp, bp

mov ax, 'A'
push ax

mov ax, 'B'
push ax

mov ax, 'C'

call print

pop ax
call print

pop ax
call print

pop ax
call print

jmp $

print:
    mov ah, 0x0e
    int 0x10
    ret


times 510-($-$$) db 0
dw 0xaa55