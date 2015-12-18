Title(Ex09)
.model small
.stack 100h
.data
	array1 dw 0,1,2,3,4,5,6,7,8,9
	count = ($ - array1) / 2

	array2 dw 0,1,2,3,4,5,6,7,8,9
	array3 dw 10 dup(0)
.code
main proc
	; Set the correct offset
	mov ax, @data
	mov ds, ax

	mov cx, count

	mov bx, 0
	loop1:
	mov ax, array1[bx]
	add ax, array2[bx]
	mov array3[bx], ax
	add bx, 2
	loop loop1

	mov ax, 4C00h
	int 21h

main endp
end main
