//Leer tres n�meros que denoten una fecha (d�a, mes, a�o) y comprobar que sea una
//fecha v�lida. Si la fecha no es v�lida escribir un mensaje de error por pantalla. Si la fecha
//		es v�lida se debe imprimir la fecha cambiando el n�mero que representa el mes por su
//	nombre. Por ejemplo: si se introduce 1 2 2006, se deber� imprimir "1 de febrero de
//2006".
Algoritmo sin_titulo
	Definir year,dia,mes Como Entero
	
	Escribir "Escribir dia mes a�o"
	Leer dia,mes,year
	
	Si mes<13 y mes >0 Entonces
		Escribir "Es valido"
	SiNo
		Escribir "No es valido"
	Fin Si
	
	Si mes==1 Entonces
		Escribir "Enero"
	Fin Si
	
	Segun mes Hacer
		1:
			Escribir "Enero"
		2:
			Escribir "Febrero"
		3:
			Escribir "Marzo"
		De Otro Modo:
			secuencia_de_acciones_dom
	Fin Segun
FinAlgoritmo
