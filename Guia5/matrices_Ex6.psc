//Una matriz m�gica es una matriz cuadrada (tiene igual n�mero de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2   7   6
//	9   5   1
//	4   3   8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es m�gica o no, y en caso de que
//	sea m�gica escribir la suma. Adem�s, el programa deber� comprobar que los n�meros
//	introducidos son correctos, es decir, est�n entre el 1 y el 9. El usuario ingresa el tama�o de la
//	matriz que no debe superar orden igual a 10.

Algoritmo seis
	Definir n, matriz como Entero
	Escribir "Ingrese el tama�o de la matriz (no debe superar orden igual a 10): "
    Leer n 
	
	Si (n > 10) Entonces
        Escribir("Error: el tama�o de la matriz no debe ser mayor a 10.")
	FinSi
	
	Dimension matriz[n, n]	
	
	unoAlNueve(n, matriz)
	sumMagica(n, matriz)
	
FinAlgoritmo

SubProceso unoAlNueve(n, matriz)
	
	// Pedir al usuario que ingrese los valores de la matriz y verificar que sean enteros entre 1 y 9
	Definir i, j, num como Entero 
	Para i = 0 Hasta n-1 Con Paso 1 Hacer
        Para j = 0 Hasta n-1 Con Paso 1 Hacer
            num = 0
            Mientras (num < 1) O (num > 9) Hacer
                Escribir "Ingrese el valor de la posici�n [", i+1, ",", j+1, "]: "
                Leer num
                Si (num < 1) O (num > 9) Entonces
                    Escribir("Error: el valor debe estar entre 1 y 9.")
                FinSi
            FinMientras
            matriz[i,j] = num
        FinPara
    FinPara
	
FinSubProceso

SubProceso sumMagica(n, matriz)
	
	Definir sumaFila, sumaColumna, sumaMagica, j, i Como Entero 
	
	// Calcular la suma m�gica de la primera fila
    sumaMagica = 0
    Para j = 0 Hasta n-1 Hacer
        sumaMagica = sumaMagica + matriz[0,j]
    FinPara
    
    // Verificar si la matriz es m�gica
    Para i = 0 Hasta n-1 Hacer
        // Verificar si la suma de la fila i es igual a la suma m�gica
	sumaFila = 0
        Para j = 0 Hasta n-1 Hacer
            sumaFila = sumaFila + matriz[i,j]
        FinPara
        Si (sumaFila <> sumaMagica) Entonces
            Escribir("La matriz no es m�gica.")
        FinSi
        
        // Verificar si la suma de la columna i es igual a la suma m�gica
	sumaColumna = 0
        Para j = 0 Hasta n-1 Hacer
            sumaColumna = sumaColumna + matriz[i,j]
		FinPara
	FinPara

	
FinSubProceso
	