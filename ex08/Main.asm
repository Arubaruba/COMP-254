Title (Ex05.asm)

.model flat
.stack 100h
.data
Abytes1 db 10h, 20h, 30h, 40h
Abytes1_len = $ - Abytes1
Awords1 dw 100h, 200h, 300h, 400h
Awords1_len = $ - Awords1

Res1a db ?
Res1b db ?
Res2a dw ?
Res2b dw ?
Res3 dw ?

.code
main proc
	
	mov ebx, Awords1_len
	mov ecx, Abytes1_len
	
	mov eax, 0
	mov al, Abytes1[2]
	
	add eax, 10

main endp
end main