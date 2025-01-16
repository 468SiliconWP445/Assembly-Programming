.intel_syntax noprefix
.global main
.extern ExitProcess

main:
    xor rax, rax
    mov rcx, 10000000000

loop_start:
    add rax, rcx
    dec rcx
    jnz loop_start

    mov rdi, 0
    call ExitProcess
