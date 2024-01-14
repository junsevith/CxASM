cmake_minimum_required(VERSION 3.22)
project(CxASM C)

enable_language(ASM_NASM)
set(CMAKE_ASM_NASM_OBJECT_FORMAT elf64)
set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> <INCLUDES> \
    <FLAGS> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -o <OBJECT> <SOURCE>")

set_source_files_properties(fn1.asm PROPERTIES COMPILE_FLAGS "-g -Fdwarf")


set(CMAKE_C_STANDARD 23)

add_executable(CxASM main.c
        functions.h fn1.asm)
