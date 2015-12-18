Title(Ex10)
.model small
.stack 100h

.data
array1 db 1,2,3,4
	   db 5,6,7,8
	   db 9,10,11,12
	   
array2 db 1,2,3,4
	   db 5,6,7,8
	   db 9,10,11,12

array3 db 12 dup(0)

ROWS = 3
COLS = 4
ARRAY_SIZE = 12

.code
main proc
	; Set the correct offset
	mov ax, @data
	mov ds, ax
	
	mov bx, 0
	mov si, 0

	mov cx, offset array3

	loop1:
	mov al, array1[bx][si]
	add al, array2[bx][si]
	mov array3[bx][si], al
	
	inc si
	
	cmp si, COLS
	
	jnz loop1
	mov si, 0
	add bx, COLS
	
	cmp bx, ARRAY_SIZE

	jnz loop1

	mov ax, 4C00h
	int 21h

main endp
end main
