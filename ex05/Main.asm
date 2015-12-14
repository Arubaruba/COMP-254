Title(Ex10)

.model flat
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
	
	mov ebx, 0
	mov esi, 0

	loop1:
	mov al, array1[ebx][esi]
	add al, array2[ebx][esi]
	mov array3[ebx][esi], al
	
	inc esi
	
	cmp esi, COLS
	
	jne loop1
	mov esi, 0
	add ebx, COLS
	
	cmp ebx, ROWS

	jne loop1

	
	mov eax, 1
	
main endp
end main