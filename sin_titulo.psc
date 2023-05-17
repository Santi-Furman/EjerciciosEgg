//Leer tres números que denoten una fecha (día, mes, año) y comprobar que sea una
//fecha válida. Si la fecha no es válida escribir un mensaje de error por pantalla. Si la fecha
//		es válida se debe imprimir la fecha cambiando el número que representa el mes por su
//	nombre. Por ejemplo: si se introduce 1 2 2006, se deberá imprimir "1 de febrero de
//2006".
Algoritmo sin_titulo
	Definir year,dia,mes Como Entero
	
	Escribir "Escribir dia mes año"
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
