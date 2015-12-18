Title(Ex08c)
.model small
.stack 100h
.data
array1 db 0,1,2,3,4,5,6,7,8,9
array1_len = $ - array1

array2 db 2,4,6,8
array2_len = $ - array2

array3 db 10 dup (?)

.code
main proc
	; Set the correct offset
	mov ax, @data
	mov ds, ax
	
	mov cx, array1_len
	
	loop1:
	
	; Add one value from array1 and all values from array2 in al
	mov bx, cx
	mov al, array1[bx - 1]
	mov array3[bx], al

	; Nested loop
	push cx

	mov cx, array2_len
	mov bl, 0

	loop2:
	mov bx, cx
	add bl, array2[bx - 1]
	loop loop2

	mov bx, cx
	add array3[bx], bl

	pop cx

	
	loop loop1

	mov ax, 4C00h
	int 21h

main endp
end main
