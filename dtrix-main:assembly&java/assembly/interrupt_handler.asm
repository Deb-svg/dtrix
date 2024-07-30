; Interrupt handler for Dtrix

[BITS 32]
[ORG 0x2000]

section .data
    int_msg db 'Interrupt received!', 0

section .text
    global interrupt_handler

interrupt_handler:
    ; Simple interrupt handler that prints a message
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, int_msg
    mov edx, 22
    int 0x80
    iret
