SubProceso tempMedia(tempMin,tempMax)
	
	Definir media Como real
	media = (tempMax + tempMin) / 2
	Escribir "La temperatura media es: ",media
	
FinSubProceso

Algoritmo ejercicio2_guia4_clase15
	Definir n,tempMax,tempMin,i Como Entero
	
	Escribir "Ingrese la cantidad de dias"
	Leer n
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese temperatura minima"
		Leer tempMin
		Escribir "Ingrese temperatura maxima"
		Leer tempMax
		tempMedia(tempMin,tempMax)
	Fin Para
FinAlgoritmo
