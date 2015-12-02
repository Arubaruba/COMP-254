Title(Ex08c)

.model flat
.stack 100h
.data
array1 db 0,1,2,3,4,5,6,7,8,9
array1_len = $ - array1

array2 db 2,4,6,8
array2_len = $ - array2

array3 db 10 dup (?)

.code
main proc
	
	mov ecx, array1_len
	
	loop1:
	
	; Add one value from array1 and all values from array2 in al
	mov al, array1[ecx - 1]
	mov array3[ecx], al

	; Nested loop
	push ecx

	mov ecx, array2_len
	mov bl, 0

	loop2:
	add bl, array2[ecx - 1]
	loop loop2

	add array3[ecx], bl

	pop ecx

	
	loop loop1

	mov eax, 1
main endp
end main