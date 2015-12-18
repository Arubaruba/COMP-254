Title (Ex05.asm)

.model flat
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

	; Part A
	mov ax, 0

	mov edi, offset Abytes1
	
	; Add contents of Abytes1 WITHOUT a loop
	add al, [edi]
	inc edi
	add al, [edi]
	inc edi
	add al, [edi]
	inc edi
	add al, [edi]

	mov Res1a, al

	; Part B
	mov ax, 0

	mov edi, offset Abytes1
	mov ecx, Abytes1_len

	; Add contents of Abytes1 WITH a loop

	loop1:
	add al, [edi]
	inc edi
	Loop loop1

	mov Res1b, al

	; Part C
	mov ax, 0

	mov edi, offset Awords1
	
	; Add contents of Awords1 WITHOUT a loop
	add ax, [edi]
	add edi, 2
	add ax, [edi]
	add edi, 2
	add ax, [edi]
	add edi, 2
	add ax, [edi]

	mov Res2a, ax

	; Part D
	mov ax, 0

	mov edi, offset Awords1
	mov ecx, Awords1_len

	; Add contents of Awords1 WITH a loop

	loop2:
	add ax, [edi]
	add edi, 2
	Loop loop2

	mov Res2b, ax

	; Part E
	mov ax, 0

	; Add Res2b and Res1a
	add al, Res1a
	add ax, Res2b

	mov Res3, ax

	mov ax, 0

main endp
end main