////Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
////tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
////Por ejemplo:
////	2 7 6     2 3 4
////	9 5 1     2 3 4 
////	4 3 8     5 3 1
////	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
////	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
////	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
////	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
////	matriz que no debe superar orden igual a 10.


Algoritmo Ej_6
	Definir matriz,m Como Entero
	
	Escribir "Ingrese el tamaño que desea para su matriz cuadrada"
	Leer m

	validacionOrden(m)
	Dimension matriz(m,m)
	
	rellenarMatrizCuadrada(matriz,m)
	
	mostrarMatriz(matriz,m,m)
	
	matrizMagica(matriz,m)
	
FinAlgoritmo
/////////////
SubProceso matrizMagica(matriz,m)
	Definir i,j,sumaFila,sumaColumna,sumaDiagonal, contador Como Entero
	
	contador=0
	sumaColumna=0
	sumaDiagonal=0
	sumaFila=0
	
	Para i<-0 Hasta m-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			
			sumaFila = sumaFila + matriz(i,j)
			sumaColumna = sumaColumna + matriz(j,i)
			
		FinPara
		
		Si sumaFila=sumaColumna Entonces
			contador=contador+1
		FinSi
	FinPara	
	
	diagonalMatriz(matriz,m,sumaDiagonal)
//	Escribir sumaDiagonal
//	Escribir sumaColumna
//	Escribir sumaFila
	
	Si contador=m y sumaDiagonal=sumaColumna Entonces
		Escribir "La matriz es mágica!!!"
		Escribir "La suma es: " sumaColumna/m
	SiNo
		Escribir "Lo siento, la matriz no es mágica"
	FinSi
	
FinSubProceso

/////////////
SubProceso validacionOrden(m)
	
	Mientras m>=10 Hacer
		Escribir "Lo siento, debe tener tamaño menor a 10"
		Escribir "Intentalo de nuevo"
		Leer m
	FinMientras
	
FinSubProceso
//////////////////
SubProceso validacionNumMatriz(num Por Referencia)
	
	Mientras num<1 o num>9 Hacer
		Escribir "Lo siento, el numero debe estar entre 1 y 9"
		Escribir "Intenta de nuevo!"
		Leer num
	FinMientras
FinSubProceso
//////////////////
SubProceso diagonalMatriz(matriz,m, sumaDiagonal Por Referencia)
	Definir i,j, sumaDiag,sumaDiag2, aux1,aux2 Como Entero
	sumaDiag=0
	sumaDiag2=0
	
	//diagonal 1
	Para i<-0 Hasta m-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			
			si i=j Entonces
				sumaDiag=sumaDiag+matriz(i,j)
			FinSi
			
	
		FinPara
		
	FinPara	
	// diagonal 2
	aux1=0
	aux2=m-1
	Para i<-0 Hasta m-1 Hacer
		Para j<-m-1 Hasta 0 Hacer
			
			si aux1=i y aux2=j Entonces
				sumaDiag2=sumaDiag2+matriz(i,j)
				aux1=aux1+1
				aux2=aux2-1
			FinSi
		
		FinPara
	FinPara	
	
	Si sumaDiag=sumaDiag2 Entonces
		sumaDiagonal=sumaDiag*m
	FinSi
	
FinSubProceso
/////////////////
SubProceso rellenarMatrizCuadrada(matriz,m)
	Definir i,j,aux Como Entero
	//rellenar aleatorio en este Caso 
	Para i<-0 Hasta m-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			
			Escribir "Ingresa el valor para la posicion (" i ", " j ")" Sin Saltar
			Leer matriz(i,j)

			validacionNumMatriz(matriz(i,j))
			
			
		FinPara
	FinPara	
FinSubProceso
///////////////////////
SubProceso mostrarMatriz(matriz,m,n)
	Definir i,j Como Entero
	//mostrar
	Escribir "La Matriz es: "
	Para i<-0 Hasta m-1 Hacer
		Para j<-0 Hasta n-1 Hacer
			
			Escribir matriz(i,j) " " Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	