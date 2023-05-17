//Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se
//realiza la multiplicación entre matrices consultar el siguiente link:
//https://es.wikibooks.org/wiki/%C3%81lgebra_Lineal/Matriz_por_vector
Algoritmo ejercicio6_guia5parte2_encuentro24
	Definir N,matriz1,matriz2 Como Entero
	N=3
	Dimension matriz1[N,N]
	Dimension matriz2Vector[1,N]
	
	//Ingresar las matrices
	Escribir "Ingrese la primera matriz"
	llenarMatriz(N,matriz1)
	Escribir "Ingrese la segunda matriz (vector)"
	llenarMatriz(N,matriz2)
	
	//Mostrar las matrices
	mostrarMatriz(N,matriz1)
	mostrarMatriz(N,matriz2)
	
	//Multiplicar matriz por vector
	
FinAlgoritmo


Funcion llenarMatriz(N,matriz)
	Definir i,j Como Entero
	Para i<-0 Hasta N-1 Hacer
		Para j<-0 Hasta N-1 Hacer
			Escribir 'Ingrese el valor de la posicion [',i,',',j,']'
			Leer matriz[i,j]
		FinPara
	FinPara
	Escribir 'Matriz inicializada con exito'
FinFuncion

SubProceso mostrarMatriz(N,matriz)
	Definir i,j Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir Sin Saltar "[",matriz[i,j],"]"
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso