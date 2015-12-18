Title (Ex06.asm)
.model small
.stack 100h
.data

stringA db "Assembly Language is a useful and interesting course. I will student and get an A in COMP-254.!!!!" 
count = $ - stringA
stringB db count dup(?)

.code
main proc
	; Set the correct offset
	mov ax, @data
	mov ds, ax

	mov cx, count

	; Pointers to the beginnings of the strings
	mov si, offset stringA
	mov bx, offset stringB

	loop1:

	; Copy stringA to stringB using al as a temp var
	mov al, [si]
	mov [bx], al

	; Increment the pointers to the strings
	inc si
	inc bx

	Loop loop1

	mov ax, 4C00h
	int 21h

main endp
end main
