.data
	hello: .asciz "Hello world!"

.text 
	li a7, 4
	la a0, hello
	ecall
