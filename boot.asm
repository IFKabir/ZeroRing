org 0x7c00
bits 16

start:
    mov si, message
    mov ah, 0x0e        ; BIOS teletype output

.print_loop:
    lodsb               ; load byte from [si] into al, increment si
    test al, al         ; check for null terminator
    jz .done
    int 0x10            ; print character
    jmp .print_loop

.done:
    jmp $               ; halt

message db "SUDIPTO MADARCHOD THA MADARCHOD HAI MADARCHOD RAHEGA", 0

times 510-($-$$) db 0
db 0x55, 0xaa