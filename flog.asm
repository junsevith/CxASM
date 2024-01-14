SECTION .data
output  dd  0.0

SECTION .text
global  flog



flog:
    push ebp
    mov ebp, esp

    push ecx
    push edx
    push esi
    push edi

fn_calc:
    finit

    fld1
    fild dword [ebp+16]
    fyl2x

    fld1
    fld qword [ebp+8]
    fyl2x

    fdivp

    fst dword [output]
    mov eax, [output]

fn_fin:
    pop edi
    pop esi
    pop edx
    pop ecx

    mov esp, ebp
    pop ebp
    ret