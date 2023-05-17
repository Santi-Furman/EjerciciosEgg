//Escriba un programa para obtener el grado de eficiencia de un operario de una fábrica de
//	tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un período
//	de prueba:
//		x Producir menos de 200 tornillos defectuosos.
//		x Producir más de 10000 tornillos sin defectos.
//	x El grado de eficiencia se determina de la siguiente manera:
//		x Si no cumple ninguna de las condiciones, grado 5.
//			x Si sólo cumple la primera condición, grado 6.
//				x Si sólo cumple la segunda condición, grado 7.
//					x Si cumple las dos condiciones, grado 8
//	Escribir "Escriba los numeros 1 y 2: "
Algoritmo ejercicio3_guia2_clase6
	Definir tornillosDefectuosos,tornillosSinDefectos Como Entero
	Definir condicion1,condicion2 Como Logico
	
	Escribir "Escribir la cantidad de tornillos defectuosos"
	Leer tornillosDefectuosos
	Escribir "Escribir los no defectuosos"
	Leer tornillosSinDefectos
	
	condicion1=tornillosDefectuosos < 200
	condicion2=tornillosSinDefectos > 10000
	
	
	Si condicion1 y condicion2 Entonces
		Escribir "Grado 8"
     SiNo
		 Si condicion2 Entonces
			 Escribir "Grado 7"
		 SiNo
			 Si condicion1 Entonces
				 Escribir "Grado 6"
			 SiNo
				 Escribir "Grado 5"
			 Fin Si
		 Fin Si
	Fin Si

FinAlgoritmo
