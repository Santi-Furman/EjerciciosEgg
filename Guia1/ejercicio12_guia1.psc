//Pide al usuario dos números y muestra la "distancia" entre ellos (el valor absoluto de su
//diferencia, de modo que el resultado sea siempre positivo).
Algoritmo ejercicio12_guia1
	Definir num1,num2,distancia Como Real
	Escribir "por favor ingresa el primer número: "
	leer num1
	Escribir "Por favor ingresa el segundo número: "
	leer num2
	distancia=abs(num1-num2)
	Escribir " La distancia entre os números que ingresó es: ", distancia 	
FinAlgoritmo
