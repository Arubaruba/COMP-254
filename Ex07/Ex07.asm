Title (Ex07.asm)
.model small
.stack 100h
.data
	array1 dw 0,1,2,3,4,5,6,7,8,9
	count = ($ - array1) / 2
	var1 dw 0
.code
main proc
	; Set the correct offset
	mov ax, @data
	mov ds, ax

	mov ax, 0
	mov cx, count
	mov bx, offset array1

	loop1:
	add ax, [bx]
	add bx, 2
	Loop loop1

	mov ax, 4C00h
	int 21h

main endp
end main
