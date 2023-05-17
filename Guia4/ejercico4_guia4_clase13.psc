//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//	función Subcadena().
Funcion retorno <- EncontrarLetra ( frase,letra )
	Definir retorno,i Como Entero
	retorno:=0
	
	Para i<-0 Hasta (Longitud(frase)-1) Con Paso 1 Hacer
		Si SubCadena(frase,i,i) = letra Entonces
			retorno:=retorno +1
		FinSi
	Fin Para
		
	
	
	
Fin Funcion

Algoritmo ejercico4_guia4_clase13
	Definir frase Como Cadena
	Definir letra Como Caracter
	
	Escribir"Escriba la frase a utlizar: "
	Leer frase
	Escribir "Escriba la letra a buscar en la frase"
	Leer letra
	Escribir "La cantidad de veces que ",letra," aparece en la frase es: ", EncontrarLetra(frase,letra)
FinAlgoritmo
