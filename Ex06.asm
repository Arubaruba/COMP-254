Title (Ex06.asm)

.model flat
.stack 100h
.data

stringA db "Assembly Language is a useful and interesting course. I will student and get an A in COMP-254.!!!!" 
count = $ - stringA
stringB db count dup(?)

.code
main proc

mov ecx, count

; Pointers to the beginnings of the strings
mov esi, offset stringA
mov ebx, offset stringB

loop1:

; Copy stringA to stringB using al as a temp var
mov al, [esi]
mov [ebx], al

; Increment the pointers to the strings
inc esi
inc ebx

Loop loop1

main endp
end main
