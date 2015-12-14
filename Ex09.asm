Title(Ex09)

.model flat
.stack 100h

.data
array1 dw 0,1,2,3,4,5,6,7,8,9
count = ($ - array1) / 2

array2 dw 0,1,2,3,4,5,6,7,8,9
array3 dw 10 dup(0)

.code
main proc

	mov ecx, count

	mov ebx, 0
	loop1:
	mov ax, array1[ebx]
	add ax, array2[ebx]
	mov array3[ebx], ax
	add ebx, 2
	loop loop1

main endp
end main