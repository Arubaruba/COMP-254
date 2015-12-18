Title(Ex04.asm)
.model flat
.stack 100h
.data
	Abytes1 db 10h, 20h, 30h, 40h
	Awords1 dw 100h, 200h, 300h
	Res1 db ?
	Res2 dw ?
	Res3 dw ?
.code
main proc
	
	; Sum of Abytes1
	mov ax, 0
	mov ebx, offset Abytes1

	add al, [ebx + 0]
	add al, [ebx + 1]
	add al, [ebx + 2]
	add al, [ebx + 3]

	mov Res1, al

	; Sum of Awords1
	mov ax, 0
	mov ebx, offset Awords1

	add ax, [ebx + 0]
	add ax, [ebx + 1]
	add ax, [ebx + 2]
	add ax, [ebx + 3]

	mov Res2, ax

	; Add Res1 and Res2
	mov ax, 0
	mov al, Res1
	add ax, Res2

	mov Res3, ax

main endp
end main