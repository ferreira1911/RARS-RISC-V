.data
	input1: .asciz "Primeiro número: "
	input2: .asciz "Segundo número: "
	resultado: .asciz "O resultado da soma é: "

.text
	#Imprimir a mensagem do Input 1
	li a7, 4
	la a0, input1
	ecall
	
	#Ler o primeiro numero e fazemos ecall e pois nao tem inputs e o output(numero digitado) fica no a0
	li a7, 5
	ecall
	mv t0, a0
	
	#Imprimir a mensagem do Input 1
	li a7, 4
	la a0, input2
	ecall
	
	#Ler o segundo numero e fazemos ecall e pois nao tem inputs e o output(numero digitado) fica no a0
	li a7, 5
	ecall
	mv t1, a0
	
	#Soma
	add t2, t0, t1
	
	#Imprimir o texto do reultado
	li a7, 4
	la a0, resultado
	ecall
	
	#Imprimir a Soma
	li a7, 1
	add a0, zero, t2
	ecall