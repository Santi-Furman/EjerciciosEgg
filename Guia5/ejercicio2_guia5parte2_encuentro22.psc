//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
Algoritmo ejercicio2_guia5parte2_encuentro22
	
	Definir matriz,N Como Entero
	N=5
	Dimension matriz[N,N]
	
	llenarMatrizAleatoria(N,matriz)
	buscarNumeroEnMatriz(N,matriz)
FinAlgoritmo

//Llenar matriz con numeros aleatorios
SubProceso llenarMatrizAleatoria(N,matriz)
	Definir i,j Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			matriz[i,j]=Aleatorio(1,10)
		Fin Para
		
	Fin Para
	Escribir "Matriz inicializada con exito"
FinSubProceso

//Bucar un numero en la matriz
SubProceso buscarNumeroEnMatriz(N,matriz)
	Definir i,j,num como enteros
	Definir encontrado como logico
	
	encontrado=falso
	i=0
	j=0
	Escribir "Ingrese el numero a buscar"
	Leer num
	Repetir
		Repetir
			Si num=matriz[i,j] Entonces
				encontrado=Verdadero
				Escribir "El numero ingrsado se encontro en [",i,",",j,"]"
			Fin Si
			j=j+1
		Mientras Que (j < N) y no encontrado
		i=i+1
	Mientras Que (i < N) y no encontrado
	Si no encontrado Entonces
		Escribir "El numero ingresado no se ha encontrado en la matriz"
	Fin Si
FinSubProceso
	