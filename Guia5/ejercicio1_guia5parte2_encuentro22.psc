//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.
Algoritmo ejercicio1_guia5parte2_encuentro22
	
	Definir matriz,N Como Entero
	N=3
	Dimension matriz[N,N]
	
	llenarMatriz(N,matriz)
	mostrarMatriz(N,matriz)
	
FinAlgoritmo

SubProceso llenarMatriz(N,matriz)
	Definir i,j Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir "Ingrese el valor de la posicion [",i,",",j,"]"
			Leer matriz[i,j]
		Fin Para
		
	Fin Para
	Escribir "Matriz inicializada con exito"
FinSubProceso

SubProceso mostrarMatriz(N,matriz)
	Definir i,j Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir Sin Saltar "[",matriz[i,j],"]"
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso