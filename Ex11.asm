Title(Ex11)

.model flat
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
	
	mov ebx, 0
	mov esi, 0

	; Just to get the memory offset in watches
	mov ecx, offset array3

	loop1:
	mov ax, array1[ebx][esi]
	add ax, array2[ebx][esi]
	mov array3[ebx][esi], ax
	
	add esi, 2
	
	cmp esi, ROWBYTES
	
	jne loop1
	mov esi, 0
	add ebx, ROWBYTES
	
	cmp ebx, ARRAY_SIZE

	jne loop1

	
	mov eax, 1
	
main endp
end main