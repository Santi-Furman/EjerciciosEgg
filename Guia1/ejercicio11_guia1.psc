//Un alumno desea saber cu�l ser� su calificaci�n final en la materia de Algoritmos. Dicha
//calificaci�n se compone de los siguientes porcentajes:
//	a. 55% del promedio de sus tres calificaciones parciales.
//	b. 30% de la calificaci�n del examen final.
//	c. 15% de la calificaci�n de un trabajo final.
Algoritmo ejercicio11_guia1
	Definir p1, p2, p3, prom_parciales, nota_final, exam_final, trabajo_final Como Real
	Escribir "Ingrese la nota del parcial 1: "
	Leer p1
	Escribir "Ingrese la nota del parcial 2: "
	Leer p2
	Escribir "Ingrese la nota del parcial 3: "
	Leer p3
	Escribir "Ingrese la nota del examen final: "
	Leer exam_final
	Escribir "Ingrese la nota del trabajo final: "
	Leer trabajo_final
	
	prom_parciales = (p1+p2+p3)/3
	nota_final = (prom_parciales*0.55)+(trabajo_final*0.15)+(exam_final*0.3)
	
	Escribir "La nota final es: ", nota_final
FinAlgoritmo
