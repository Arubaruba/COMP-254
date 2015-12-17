Title (Ex07.asm)

.model flat
.stack 100h
.data
array1 dw 0,1,2,3,4,5,6,7,8,9
count = ($ - array1) / 2
var1 dw 0

.code
main proc

mov ax, 0
mov ecx, count
mov ebx, offset array1

loop1:
add ax, [ebx]
add ebx, 2
Loop loop1

main endp
end main
