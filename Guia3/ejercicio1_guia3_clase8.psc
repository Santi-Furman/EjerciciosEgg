//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//	una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
//			mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
//				clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema
//				correctamente.
Algoritmo ejercicio1_guia3_clase8
	Definir clave como cadena
	Definir claveIngresada como cadena
	Definir contador Como Entero
	contador = 3
	clave = "eureka" 
	
	Hacer
		Escribir "Ingresar clave, quedan ",contador," intentos"
		Leer claveIngresada
		contador= contador - 1
		
		Si Minusculas(claveIngresada) = clave Entonces
			Escribir "Felicidades, ingresaste al sistema"
			contador = 0
		SiNo
			Si contador = 0 Entonces
				Escribir "Te has quedado sin intentos"
			SiNo
				Escribir "Incorrecto"
			Fin Si
			 
		FinSi
		
	Mientras Que contador > 0 
FinAlgoritmo
