//Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la función Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
//	posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//H o l a   m u n d o     c  r  u  e  l  !
//0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
//		H o l a   m u n d o  %  c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
Algoritmo ejercicio6_guia5_encuentro19
	Definir frase, vector,simbolo Como Caracter
	Definir i,posc Como Entero
	Dimension vector[20]
	Escribir "Ingrese una frase"
	leer frase
	
	Para i=0 Hasta 19 Con Paso 1 Hacer		
		
		Si Longitud(frase)>i Entonces
			vector[i]=Subcadena(frase,i,i)
		SiNo
			vector[i]=" "
		Fin Si
		
	Fin Para
	
	Escribir "Ingrese un carácter"
	Leer simbolo
	Escribir "Ingrese una posición 1-20"
	Leer posc
	posc=posc-1
	
	Si vector[posc]="" o vector[posc]=" " Entonces
		vector[posc]=simbolo
	SiNo
		Escribir "Espacio opcupado por la letra " vector[posc]
	Fin Si
	
	Para i=0 Hasta 19 Con Paso 1 Hacer
		Escribir Sin Saltar vector[i]
	Fin Para
	Escribir ""
FinAlgoritmo
