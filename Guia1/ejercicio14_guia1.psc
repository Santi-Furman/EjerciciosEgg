Algoritmo ejercicio14_guia1
	Definir num, unidades, decenas,unidades2, decenas2 Como Real
	
	Escribir "Ingresar un número de 2 cifras"
	leer num
	
	unidades=num mod 10 
	decenas= trunc((num/10))
	
	unidades2= decenas
	decenas2= unidades
	
	Escribir  decenas2,unidades2
FinAlgoritmo
