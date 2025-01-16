.intel_syntax noprefix
.global main
.extern ExitProcess 

main:
    mov rax, 5
	mov rbx, 10
	cmp rax, rbx
	je if_equal
	
	mov rax, 3
	mov rbx, 2
	jne if_not_equal
	
if_equal:
    jmp program_end
    
if_not_equal:
    mov rax, 20
	jmp program_end
    
program_end:
	mov rdi, 0
    call ExitProcess
	
