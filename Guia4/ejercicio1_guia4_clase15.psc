SubProceso cambioDeNumero (a,b)
	Definir aux Como Entero
	
	aux=a
	a=b
	b=aux
	
	Escribir "a vale: ",a
	Escribir "b vale: ",b
	
FinSubProceso

Algoritmo ejercicio1_guia4_clase15
	
	Definir a,b Como Entero
	Escribir "Escriba los numeros"
	Leer a,b
	cambioDeNumero(a,b)
	
FinAlgoritmo
