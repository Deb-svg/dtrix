; System call handler for Dtrix

[BITS 32]
[ORG 0x3000]

section .data
    syscall_msg db 'System call executed!', 0

section .text
    global syscall_handler

syscall_handler:
    ; Simple syscall handler that prints a message
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, syscall_msg
    mov edx, 22
    int 0x80
    ret
