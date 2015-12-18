Title (Ex05.asm)

.model small
.stack 100h
.data
Abytes1 db 10h, 20h, 30h, 40h
Abytes1_len = $ - Abytes1
Awords1 dw 100h, 200h, 300h, 400h
Awords1_len = ($ - Awords1) / 2

Res1a db ?
Res1b db ?
Res2a dw ?
Res2b dw ?
Res3 dw ?

.code
main proc
	; Set the correct offset
	mov ax, @data
	mov ds, ax

	; Part A
	mov ax, 0

	mov di, offset Abytes1
	
	; Add contents of Abytes1 WITHOUT a loop
	add al, [di]
	inc di
	add al, [di]
	inc di
	add al, [di]
	inc di
	add al, [di]

	mov Res1a, al

	; Part B
	mov ax, 0

	mov di, offset Abytes1
	mov cx, Abytes1_len

	; Add contents of Abytes1 WITH a loop

	loop1:
	add al, [di]
	inc di
	Loop loop1

	mov Res1b, al

	; Part C
	mov ax, 0

	mov di, offset Awords1
	
	; Add contents of Awords1 WITHOUT a loop
	add ax, [di]
	add di, 2
	add ax, [di]
	add di, 2
	add ax, [di]
	add di, 2
	add ax, [di]

	mov Res2a, ax

	; Part D
	mov ax, 0

	mov di, offset Awords1
	mov cx, Awords1_len

	; Add contents of Awords1 WITH a loop

	loop2:
	add ax, [di]
	add di, 2
	Loop loop2

	mov Res2b, ax

	; Part E
	mov ax, 0

	; Add Res2b and Res1a
	add al, Res1a
	add ax, Res2b

	mov Res3, ax

	mov ax, 4C00h
	int 21h

main endp
end main
