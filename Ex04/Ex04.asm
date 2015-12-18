Title(Ex04.asm)
.model small
.stack 100h
.data
	Abytes1 db 10h, 20h, 30h, 40h
	Awords1 dw 100h, 200h, 300h
	Res1 db ?
	Res2 dw ?
	Res3 dw ?
.code
main proc
	; Set the correct offset
	mov ax, @data
	mov ds, ax

	; Sum of Abytes1
	mov ax, 0
	mov bx, offset Abytes1

	add al, [bx + 0]
	add al, [bx + 1]
	add al, [bx + 2]
	add al, [bx + 3]

	mov Res1, al

	; Sum of Awords1
	mov ax, 0
	mov bx, offset Awords1

	add ax, [bx + 0]
	add ax, [bx + 1]
	add ax, [bx + 2]
	add ax, [bx + 3]

	mov Res2, ax

	; Add Res1 and Res2
	mov ax, 0
	mov al, Res1

	mov Res3, 0
	add Res3, ax
	mov ax, Res2
	add Res3, ax

	mov ax, 4C00h
	int 21h

main endp
end main
