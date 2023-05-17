// Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
// tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
// Por ejemplo:
// 2 7 6 
// 9 5 1 
// 4 3 8
// En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
// algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
// sea mágica escribir la suma. Además, el programa deberá comprobar que los números
// introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
// matriz que no debe superar orden igual a 10.
Algoritmo ejercicio6_guia5parte2_encuentro23
	Definir N,matriz Como Entero
	Escribir 'Ingrese la dimension de la matriz'
	Leer N
	Dimension matriz[N,N]
	llenarMatriz(N,matriz)
	mostrarMatriz(N,matriz)
	Escribir matrizMagica(N,matriz)
FinAlgoritmo

///Llenar matriz manualmente
Funcion llenarMatriz(N,matriz)
	Definir i,j Como Entero
	Para i<-0 Hasta N-1 Hacer
		Para j<-0 Hasta N-1 Hacer
			Escribir 'Ingrese el valor de la posicion [',i,',',j,']'
			Leer matriz[i,j]
			verificarMatriz(matriz[i,j])
		FinPara
	FinPara
	Escribir 'Matriz inicializada con exito'
FinFuncion

///Verificar si los numeros ingresados estan entre 1 y 9
Funcion verificarMatriz(num Por Referencia)
	Definir i,j Como Entero
	Mientras num<1 O num>9 Hacer
		Escribir 'Lo siento, el numero debe estar entre 1 y 9'
		Escribir 'Intenta de nuevo!'
		Leer num
	FinMientras
FinFuncion

////Imprimir matriz
SubProceso mostrarMatriz(N,matriz)
	Definir i,j Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir Sin Saltar "[",matriz[i,j],"]"
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso
///Sumar Filas, columnas y diagonales y verificar que todas den el mismo resultado
Funcion esMagica <- matrizMagica(N,matriz)
	// variables de almacenamiento de las sumas
	Definir sumaD1,sumaD2,sumaFila,sumaColumna Como Entero
	// varibles para recorrer el bucle
	Definir i,j Como Entero
	// varibles de retorno
	Definir esMagica Como Logico
	// inicializacion de variables
	sumaColumna <- 0
	sumaD1 <- 0
	sumaD2 <- 0
	sumaFila <- 0
	esMagica <- Verdadero
	// sumar diagonal principal yd iagonal secundaria
	Para i<-0 Hasta N-1 Hacer
		sumaD1 <- sumaD1+matriz[i,i]
		sumaD2 <- sumaD2+matriz[i,N-i-1]
	FinPara
	Si sumaD1<>sumaD2 Entonces
		esMagica <- Falso
	FinSi
	// sumar columnas y filas
	Para i<-0 Hasta N-1 Hacer
		Para j<-0 Hasta N-1 Hacer
			sumaFila <- sumaFila+matriz[i,j]
			sumaColumna <- sumaColumna+matriz[j,i]
			Si sumaColumna<>sumaFila Entonces
				esMagica <- Falso
			FinSi
		FinPara
	FinPara
	sumaColumna <- sumaColumna/N
	sumaFila <- sumaFila/N
	Si sumaColumna<>sumaD1 Entonces
		esMagica <- Falso
	FinSi
	Escribir sumaColumna
	Escribir sumaD1
	Escribir sumaD2
	Escribir sumaFila
FinFuncion
