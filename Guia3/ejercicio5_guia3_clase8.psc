//Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
//			ingresará diez números.
Algoritmo ejercicio5_guia3_clase8
	Definir promedio Como Real
	Definir num,contador,sumaPares,sumaImpares,contadorPares,contadorImpares Como Entero
	
	contador = 0
	sumaImpares = 0
	sumaPares = 0
	contadorPares = 0
	contadorImpares = 0
	
	Repetir
		Escribir "Ingresar numero"
		Leer num
		contador=contador + 1
		
		Si num mod 2 = 0 Entonces
			sumaPares=sumaPares + num
			contadorPares = contadorPares + 1
		SiNo
			sumaImpares= sumaImpares + num
			contadorImpares = contadorImpares + 1
		Fin Si
		
	Mientras Que contador < 10
	
	Escribir "El promedio de los numeros pares es: ",sumaPares/contadorPares
	Escribir "El promedio de los numeros impares es: ",sumaImpares/contadorImpares
FinAlgoritmo
