IF 0  ; いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい
                      Build this template with "CONSOLE ASSEMBLE AND LINK"
ENDIF ; いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい

    __UNICODE__ equ 1

    ;include \masm32\include\masm32rt.inc

	.data

	asdf db 32, 33, 34, 35
	val1 dq 1

    .code

start:
   
; いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい

    call main
    inkey
    exit

; いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい

main proc
    cls
	mov ax, 7
	mov bx, 3
	xchg ax, bx
	printf("ax: %u\n", ax)
	printf("bx: %u\n", bx)
	ret

	mov ebx, offset asdf
    mov ecx, 8
	loop1:
	printf("%u\n", byte ptr [ebx])
	inc ebx
	
	jz loop1
    ret

main endp

; いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい

end start