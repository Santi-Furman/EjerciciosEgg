//Escriba un programa que valide si una nota está entre 0 y 10, sino está entre 0 y 10 la
//		nota se pedirá de nuevo hasta que la nota sea correcta.
Algoritmo ejercicio1_guia3_clase7
	Definir nota Como Entero
	Escribir "Escriba su nota: "
	Leer nota
	
	Mientras (nota > 10) o (nota <0)  Hacer
		Escribir "Ingrese de nuevo la nota: "
		Leer nota
	Fin Mientras
	
	Escribir "Nota correcta"
FinAlgoritmo
