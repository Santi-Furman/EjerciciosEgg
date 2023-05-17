Funcion retorno <- capicua ( num )
	Definir retorno Como Logico
	Definir aux,digito,invertido Como Entero
	
	aux:=num
	invertido:=0
	
	Mientras aux>0 Hacer
		digito=aux MOD 10
		invertido=digito + (invertido*10)
		aux=trunc(aux/10)
	Fin Mientras
	
	Si num=invertido Entonces
		retorno=Verdadero
	SiNo
		retorno=Falso
	Fin Si
Fin Funcion

//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//		transformar el numero a cadena para realizar el ejercicio.
Algoritmo ejercicio13_guia4_clase14
	Definir num Como Entero
	Escribir "Escriba el numero"
	Leer num
	Escribir capicua(num)
	
FinAlgoritmo
