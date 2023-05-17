Algoritmo Desafio
	Definir matriz Como Caracter;
	Definir palabra Como Caracter
	
	Definir i,j,filas,columnas Como Entero;
	filas=9
	columnas=12
	Dimension matriz[filas,columnas]
	inicializar(matriz,filas,columnas)
	imprimirMatriz(matriz,filas,columnas)
	Escribir ""
	agregarPalabra(matriz,0,"vector")
	imprimirMatriz(matriz,filas,columnas)
	Escribir "La posicion es " BuscarR(matriz,fila)
	
	
FinAlgoritmo
SubProceso inicializar(matriz,filas,columnas) //quite i,j como referencia
	Definir i,j como entero //concepto null, una variable se deja vacia y sirve para verificar y veo lo que tiene la variable 
	Para i<-0 Hasta filas-1  Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			matriz[i,j]="*"
		Fin Para
	Fin Para
FinSubProceso
SubProceso imprimirMatriz(matriz,filas,columnas)
	Definir i, j Como Entero
	Para i<-0 Hasta filas-1  Con Paso 1 Hacer
		Para j<-0 Hasta columnas-1 Con Paso 1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso

SubProceso agregarPalabra(matriz,fila,palabra ) //solo necesito la posi de filas no el total de filas 
	Definir i,j Como Entero
	i=fila
	Para j=0 Hasta Longitud(palabra)-1 Hacer
		matriz[i,j]=Subcadena(palabra,j,j)
	FinPara
FinSubProceso
Funcion posicion<- BuscarR(matriz,fila) //solo necesito la posi de filas no el total de filas 
	Definir i,posicion Como Entero
	i=0
	posicion=-1
	
	

		Repetir
			
			SI matriz[fila,i]="r" Entonces
				posicion=i
				
			FinSi
			i=i+1
		Mientras Que posicion=-1
		
		
		
FinSubProceso




	
	