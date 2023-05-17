//Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se
//realiza la multiplicación entre matrices consultar el siguiente link:
//https://es.wikibooks.org/wiki/%C3%81lgebra_Lineal/Matriz_por_vector
Algoritmo ejercicio6_guia5parte2_extra_encuentro25
	Definir matriz, vector, resultado,N como Entero
	N=3
	Dimension matriz[N,N]
	Dimension vector[N,1]
	Dimension resultado[N,1]
	
	//llenar y mostrar matriz y vector
	llenarMatriz(N,matriz)
	llenarVector(N,vector)
	mostrarMatriz(N,matriz)
	mostrarVector(N,vector)
	
	//Multiplicar matrices
	vectorProducto(N,matriz,vector,resultado)
	mostrarVector(N,resultado)
	
FinAlgoritmo
SubProceso  llenarMatriz(N,matriz)
	Definir i,j Como Entero
	Para i<-0 Hasta N-1 Hacer
		Para j<-0 Hasta N-1 Hacer
			matriz[i,j]=Aleatorio(1,9)
		FinPara
	FinPara
	Escribir 'Matriz inicializada con exito'
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

SubProceso  llenarVector(N,vector)
	Definir i Como Entero
	Para i<-0 Hasta N-1 Hacer
		vector[i,0]=Aleatorio(1,9)
	FinPara
	Escribir 'Matriz inicializada con exito'
FinSubProceso

SubProceso mostrarVector(N,vector)
	Definir i,j Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Escribir  "[",vector[i,0],"]"
	Fin Para
	Escribir "Vector"
FinSubProceso

SubProceso vectorProducto(N,matriz,vector,resultado)
	Definir i,j,suma Como Entero
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		suma=0
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			suma=suma + (matriz[i,j]*vector[j,0])
		Fin Para
		resultado[i,0]=suma
	Fin Para
	
FinSubProceso
	