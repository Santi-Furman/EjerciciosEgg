Algoritmo ejercicio2_guia3_clase8
	Definir numMax,numMin,num,suma,contador Como Entero
	
	numMax = 0
	numMin = 0
	suma = 0
	contador = 0
	
	Repetir
		Escribir "Escriba un numero"
		Leer num
		
		
		Si num > numMax Entonces
			numMax=num
		SiNo
			si numMin=0 Entonces
				numMin = num
			SiNo 
				si num < numMin Entonces
					numMin = num
				FinSi
				
			FinSi
		FinSi
		
		suma = suma + num
		contador = contador + 1
	Mientras Que num <> 0
	
	Escribir "El promedio es: ",suma/contador
	Escribir "El numero maximo es: ",numMax
	Escribir "El numero minimo es: ",numMin
FinAlgoritmo
