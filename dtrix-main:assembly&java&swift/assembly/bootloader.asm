; Bootloader code for Dtrix

[BITS 16]
[ORG 0x7C00]

; Print a welcome message
print_welcome:
    mov ah, 0x0E        ; Teletype function
    mov al, 'D'         ; Character to print
    int 0x10            ; BIOS interrupt
    mov al, 't'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'i'
    int 0x10
    mov al, 'x'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'B'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 't'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'a'
    int 0x10
    mov al, 'd'
    int 0x10
    jmp $

[ TIMES 510 - ($ - $$) ] db 0
dw 0xAA55
