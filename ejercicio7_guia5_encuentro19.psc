Funcion iguales <- compararVector ( N,vector1,vector2 )
	Definir i Como Entero
	Definir iguales Como Logico
	
	iguales=Verdadero
	i=0
	
	Repetir
		Si vector1[i] <>vector2[i] Entonces
			iguales=Falso
		Fin Si
		i=i+1
	Mientras Que iguales y i<N
Fin Funcion

Algoritmo ejercicio7_guia5_encuentro19
	Definir vector1,vector2,N Como Entero
	Definir iguales Como Logico
	
	Escribir "Ingrese la longitud de los vectores"
	Leer N
	Dimension vector1[N],vector2[N]
	
	llenarVector(N,vector1)
	llenarVector(N,vector2)
	iguales=compararVector ( N,vector1,vector2 )
	mostrarVector(N,vector1)
	mostrarVector(N,vector2)
	Escribir iguales
	
FinAlgoritmo

SubProceso llenarVector(N,vector)
	Definir i Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		vector[i] = Aleatorio(1,10)
	Fin Para
	Escribir "Vector inicializado con exito"
FinSubProceso

SubProceso mostrarVector(N,vector)
	Definir i Como Entero
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Escribir Sin Saltar "[" vector[i] "] "
	Fin Para
	Escribir ""
FinSubProceso