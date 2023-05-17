Algoritmo ejercicio0_guia3_clase7
	Definir vocal, vocalSecreta Como Caracter
	
	Escribir "Escriba su vocal"
	Leer vocal
	vocal=Minusculas(vocal)
	vocalSecreta="a"
	
	Mientras vocal <> vocalSecreta Hacer
		escribir "Intenta de nuevo"
		Leer vocal
		vocal=Minusculas(vocal)
	Fin Mientras
	
	Escribir "Has acertado la vocal"
	
FinAlgoritmo
