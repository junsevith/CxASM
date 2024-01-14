SECTION .data
output  dd  0.0

SECTION .text
global  fexp



fexp:
    push ebp
    mov ebp, esp

    push ecx
    push edx
    push esi
    push edi

fn_calc:
    finit

    fild dword [ebp+16]
    fld qword [ebp+8]
    fyl2x

    fld1
    fld st1
    fprem
    f2xm1
    faddp st1, st0
    fscale

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