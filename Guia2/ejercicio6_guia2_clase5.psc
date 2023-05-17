//Escriba un programa que pida una frase o palabra y valide si la primera letra de esa frase
//	es una ?A?. Si la primera letra es una ?A?, se deberá de imprimir un mensaje por pantalla
//	que diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO". Nota:
//		investigar la función Subcadena de PseInt.
Algoritmo ejercicio6_guia2_clase5
	definir palabra, primeraLetra, ultimaLetra Como Caracter
	Escribir "Ingrese palabra: "
	leer palabra
	
	primeraLetra = Subcadena(palabra, 0,0)
	ultimaLetra = Subcadena(palabra, Longitud(palabra)-1, Longitud(palabra)-1)
	
	si primeraLetra == ultimaLetra Entonces
		Escribir "Correcto"
	SiNo
		Escribir "Incorrecto"
	FinSi
		
FinAlgoritmo
FinAlgoritmo
