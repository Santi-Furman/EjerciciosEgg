//Programar un juego donde la computadora elige un número al azar entre 1 y 10, y a
//continuación el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
//	1o) El programa elige al azar un número n entre 1 y 10.
//	2o) El usuario ingresa un número x.
//	3o) Si x no es el número exacto, el programa indica si n es más grande o más pequeño
//			que el número ingresado.
//			4o) Repetimos desde 2) hasta que x sea igual a n.
//			El programa tiene que imprimir los mensajes adecuados para informarle al usuario qué
//				hacer y qué pasó hasta que adivine el número.
Algoritmo ejercicio7_guia3_clase8
	Definir numElegido,numIngresado Como Entero
	
	numElegido = Aleatorio(1,10)
	
	Repetir
		Escribir "Ingresar numero entre 1 y 10"
		Leer numIngresado
		
		Si numIngresado > numElegido Entonces
			Escribir "El numero ingresado es mas grande que el elegido, intente de nuevo "
		SiNo
			Si numIngresado < numElegido Entonces
				Escribir "El numero ingresado es mas menor que el elegido, intente de nuevo "	
			FinSi
		FinSi
		
	Mientras Que numElegido <> numIngresado
	
	Si numElegido = numIngresado Entonces
		Escribir "Felicidades, has embocado el numero"
	FinSi
	
FinAlgoritmo
