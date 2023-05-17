Algoritmo ejercicio3_guia5_encuentro18
	Definir vector, NNN, i Como Entero
	Definir respuesta Como Caracter
	Escribir "Ingrese el tamaño del vector"
	Leer NNN
	Dimension vector[NNN]
	Para i=0 Hasta NNN-1 Con Paso 1 Hacer
		Escribir "Ingrese el número " i+1 " de " NNN
		Leer vector[i]
	Fin Para
	
	Escribir "Desea buscar un número dentro del arreglo? S/N"
	Leer respuesta
	respuesta=Minusculas(respuesta)
	
	Si respuesta=="s" Entonces
		buscarNumero(vector,NNN)
	SiNo
		Escribir "Hasta luego"
	Fin Si
	
FinAlgoritmo

SubProceso buscarNumero (vectorS Por Referencia,NS Por Valor)
	Definir num,j,x Como Entero
	Escribir "Ingrese el número a buscar"
	leer num
	x=0
	Para j=0 Hasta NS Con Paso 1 Hacer
		Si vectorS[j]==num Entonces
			x=x+1
			Escribir "El número " num "se encuentra en el índice " j
		Fin Si
	Fin Para
	Escribir "El número " num " se repite " x " veces"
	
FinSubProceso
