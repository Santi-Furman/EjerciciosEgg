//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el valor
//más grande del vector.

Funcion valormayor <- buscarMayor ( vector,N )
	Definir valormayor, i Como Entero
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Si i==0 Entonces
			valormayor=vector[i]
		Fin Si
	
		Si valormayor<vector[i] Entonces
			valormayor=vector[i]
		Fin Si
	Fin Para	
Fin Funcion

Algoritmo G5Cl19Ej5buscarValor_270423
	Definir N,i,vector,valorMayor Como Entero
	Escribir "Ingrese el tamaño del vector (N)"
	Leer N
	Dimension vector[N]
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Escribir "Ingrese el valor #" i+1
		Leer vector[i]
	Fin Para
	valorMayor=buscarMayor(vector,N)
	
	Escribir "El valor mayor dentro del vector es: " valorMayor
FinAlgoritmo
