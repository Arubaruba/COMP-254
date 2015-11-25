Title (Ex05.asm)

.model flat
.stack 100h
.data
Abytes1 db 10h, 20h, 30h, 40h
Awords1 dw 100h, 200h, 300h, 400h

Res1a db ?
Res1b db ?
Res2a dw ?
Res2b dw ?
Res3 dw ?

.code
main proc
	
	
	mov eax, 5
	
	add eax, 10

main endp
end main