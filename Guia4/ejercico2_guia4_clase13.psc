//Realizar una función que valide si un número es impar o no. Si es impar la función debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe tener
//		mensajes que digan si es par o no, eso debe pasar en el Algoritmo.
Funcion retorno <- impar ( num )
	Definir retorno Como Logico
	si num mod 2 = 0 Entonces
		retorno= Falso
	SiNo
		retorno=Verdadero
	FinSi
Fin Funcion

Algoritmo ejercico2_guia4_clase13
	Definir num Como Entero
	Escribir "Ingrese su numero para averiguar si es impar: "
	Leer num
	Escribir impar(num)
FinAlgoritmo
