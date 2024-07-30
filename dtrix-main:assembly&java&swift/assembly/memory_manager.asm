; Memory manager for Dtrix

[BITS 32]
[ORG 0x1000]

section .data
    memory_size dd 0
    memory_start dd 0x100000

section .bss
    heap resb 8192

section .text
    global init_memory

init_memory:
    mov eax, 0x100000  ; Starting memory address
    mov [memory_start], eax

    ; Setup memory size (for example purposes)
    mov eax, 0x4000000  ; 64 MB
    mov [memory_size], eax

    ret

allocate_memory:
    ; Dummy memory allocation routine
    ; In a real system, this would involve more complex logic
    mov eax, [memory_start]
    add [memory_start], 0x1000
    ret

free_memory:
    ; Dummy memory deallocation routine
    ; In a real system, this would involve more complex logic
    mov eax, [memory_start]
    sub [memory_start], 0x1000
    ret
