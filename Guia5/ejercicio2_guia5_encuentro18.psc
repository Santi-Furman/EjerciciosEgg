Algoritmo ejercicio2_guia5_encuentro18
	
	definir num, i, suma, resta, multiplicacion Como Entero
	Dimension num(10)
	suma=0
	resta=0
	multiplicacion=1
	escribir "ingrese 10 numeros"
	
	para i=0 hasta 9 con paso 1 Hacer
		leer num(i)
		suma=suma+num(i)
		resta=resta-num(i)
		multiplicacion=multiplicacion*num(i)
		
	FinPara
	
	Escribir "la suma es: ",suma
	Escribir "la resta es: ", resta
	Escribir "la multiplicacion es : " multiplicacion
	
	
	
FinAlgoritmo
