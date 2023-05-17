SubProceso restasSucecivas (dividendo,divisor Por valor, resto,cociente por Referencia)
	
	Mientras resto >= divisor Hacer
		cociente =cociente + 1
		resto=resto-divisor
	Fin Mientras
	
	Escribir "El cociente es: ",cociente," y el resto es: ",resto
FinSubProceso
Algoritmo ejercicio3_guia4_clase15
	
	Definir dividendo,divisor Como Entero
	Definir resto,cociente Como Entero
	
	Escribir "Escriba el dividendo y el divisor"
	Leer dividendo,divisor
	
	cociente = 0
	resto = dividendo
	
	restasSucecivas(dividendo,divisor,resto,cociente)
	
FinAlgoritmo
