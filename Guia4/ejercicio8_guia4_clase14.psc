//Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
//devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd".
//		Adem�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos
//			solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.
Funcion retorno <- Login ( usuario,contrasena )
	Definir retorno Como Logico
	Definir intentos Como Entero
	Definir usuarioCorrecto,contrasenaCorrecta Como Cadena
	
	intentos:=0
	usuarioCorrecto:="usuario1"
	contrasenaCorrecta:="asdasd"
	
	Repetir
		intentos:=intentos+1
		Si usuario = usuarioCorrecto Entonces
			Si contrasena = contrasenaCorrecta Entonces
				retorno=Verdadero
			SiNo
				retorno=Falso
				Leer usuario
				Leer contrasena
			Fin Si
		SiNo
			retorno=Falso
			Leer usuario
			Leer contrasena
		Fin Si
	Mientras Que intentos<3 
Fin Funcion


Algoritmo ejercicio8_guia4_clase14
	Definir usuario,contrasena como Cadena
	Escribir "Ingrese su usuario"
	Leer usuario
	Escribir "Ingrese la contrasena"
	Leer contrasena
	Escribir Login(usuario,contrasena)
	
FinAlgoritmo
