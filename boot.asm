mov ah, 0x0e
mov al, 'A'

caps:
    int 0x10
    jmp small

small:
    add al, 33
    int 0x10
    cmp al, 122
    je end
    sub al, 31
    jmp caps

end:
    jmp $

times 510-($-$$) db 0
db 0x55, 0xaa