//Crear un programa que dibuje una escalera de números, donde cada línea de números
//comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario
//al comenzar. Ejemplo: si se ingresa el número 3:
//1
//12
//123
Algoritmo ejercicio7_guia4_clase15
	
	Definir n Como Entero
	
	Escribir "Ingrese la altura de la escalera"
	Leer n
	escalera(n)
	
FinAlgoritmo

SubProceso escalera(n)
	Definir i,j Como Entero
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta i Con Paso 1 Hacer
			Escribir j Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
	
FinSubProceso
	
	