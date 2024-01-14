SECTION .data
output  dd  0.0

SECTION .text
global  fn1



fn1:
    push ebp
    mov ebp, esp

    push ecx
    push edx
    push esi
    push edi

fn_calc:
    finit
    fld dword [ebp+16]
    fld qword [ebp+8]
    fdivp

    fld qword [ebp+20]
    fild dword [ebp+28]
    fmulp

    fsubp

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