//Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
//que el primer n�mero m�ltiplo del segundo y devuelva verdadero si el primer n�mero es
//	m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.
Funcion retorno <-EsMultiplo(num1,num2)
	Definir retorno Como Logico
	Si num1 mod num2 = 0 Entonces
		retorno= Verdadero
	SiNo
		retorno= Falso
	FinSi
FinFuncion	
	
	
Algoritmo ejercico3_guia4_clase13
	Definir num1,num2 Como Entero
	Escribir "Ingrese num1 y num2"
	Leer num1,num2
	Si num1<num2 Entonces
		Escribir "El num1 debe ser mayor o igual que num2"
	SiNo
		Escribir EsMultiplo(num1,num2)
	FinSi

FinAlgoritmo
