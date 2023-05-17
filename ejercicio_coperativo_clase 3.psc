Algoritmo ejercicio_coperativo
	Definir num,centena,unidad,decena Como Entero
	Escribir "Escribe tu número de tres cifras "
	Leer num
	unidad=num mod 10
	centena=trunc(num/100)
	decena=trunc((num mod 100)/10)
	Escribir "Centena: ", centena
	Escribir "Decena: ", decena
	Escribir "Unidad: "	, unidad
FinAlgoritmo
