Title(Ex11)
.model small
.stack 100h

.data
array1 dw 10h, 20h, 30h, 40h
	   dw 50h, 60h, 70h, 80h
	   dw 90h, 100h, 110h, 120h

array2 dw 5,6,7,8
	   dw 5,6,7,8
	   dw 5,6,7,8

array3 dw 12 dup(0)

ROWS = 3
COLS = 4
ROWBYTES = COLS * 2
ARRAY_SIZE = ROWS * ROWBYTES

.code
main proc
	
	mov bx, 0
	mov si, 0

	; Just to get the memory offset in watches
	mov cx, offset array3

	loop1:
	mov ax, array1[bx][si]
	add ax, array2[bx][si]
	mov array3[bx][si], ax
	
	add si, 2
	
	cmp si, ROWBYTES
	
	jne loop1
	mov si, 0
	add bx, ROWBYTES
	
	cmp bx, ARRAY_SIZE

	jne loop1

	mov ax, 4C00h
	int 21h

main endp
end main
