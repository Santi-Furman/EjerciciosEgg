Algoritmo ejercicio2_guia3_clase10
	Definir tamano como entero
	// Pedir el tamaño del cuadrado al usuario
	Escribir "Ingrese el tamaño del cuadrado:"
	Leer tamano
	
	// Dibujar el cuadrado
	Para i = 1 Hasta tamano Con Paso 1 Hacer
		Para j <- 1 Hasta tamano Con Paso 1 Hacer
			Si i = 1 o i = tamano o j = 1 o j = tamano Entonces
				Escribir "* "
			Sino
				Escribir "  "
			Fin Si
		Fin Para
		Escribir ""
	Fin Para
	
FinAlgoritmo
