//Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
//que ingrese la opción Salir:
//	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//     a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//     elemento. Ejemplo: C = B - A
//  E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
//vez.
Algoritmo ejercicio4_guia5_encuentro19
	Definir N Como Entero
	Definir vectorA,vectorB,vectorC Como Entero
	
	Escribir "Ingrese la longitud de los vectores"
	Leer N
	Dimension vectorA[N],vectorB[N],vectorC[N]
	
	menu(N,vectorA,vectorB,vectorC)
	
FinAlgoritmo

SubProceso menu (N,vectorA,vectorB,vectorC)
	Definir opcionMenu Como Caracter
	Definir salir Como Logico
	Definir contA,contB,contC Como Entero
	
	salir=Falso
	contA=0
	contB=0
	contC=0
	Repetir
		Escribir "Menu"
		Escribir ""
		Escribir "A. Llenar vector A"
		Escribir "B. Llenar vector B"
		Escribir "C. Llenar vector C=A+B"
		Escribir "D. Llenar vector C=B-A"
		Escribir "E. ¿Que vector desea mostrar?"
		Escribir "F. Salir"
		Leer opcionMenu
		
		Segun Mayusculas(opcionMenu) Hacer
			'A':
				llenarVector(N,vectorA)
				contA=contA+1
			'B':
				llenarVector(N,vectorB)
				contB=contB+1
			'C':
				Si (contA > 0) y (contB>0)  Entonces
					sumaVectores(N,vectorA,vectorB,vectorC)
					contC=contC + 1
				SiNo
					Escribir "Para utilizar esta opcion, tanto el vector A como el B deben de estar inicializados"
				Fin Si
				
				
			'D':
				Si (contA > 0) y (contB>0)  Entonces
					restaVectores(N,vectorA,vectorB,vectorC)
					contC=contC + 1
				SiNo
					Escribir "Para utilizar esta opcion, tanto el vector A como el B deben de estar inicializados"
				Fin Si
				
			'E':
				Si (contA > 0) y (contB>0) y (contC>0) Entonces
					menuMostrarVectores(N,vectorA,vectorB,vectorC)
				SiNo
					Escribir "Para utilizar esta opcion, tanto el vector A como el B como el C deben de estar inicializados"
				Fin Si
				
			'F':
				salir=Verdadero
				
			De Otro Modo:
				Escribir "Escriba una opcion valida"
		Fin Segun
	Mientras Que no salir
	
	
FinSubProceso
	
SubProceso llenarVector(N,vector)
	Definir i Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		vector[i] = Aleatorio(-100,100)
	Fin Para
	Escribir "Vector inicializado con exito"
FinSubProceso

SubProceso sumaVectores(N,vectorA,vectorB,vectorC)
	Definir i Como Entero
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		vectorC[i] = vectorA[i] + vectorB[i]
	Fin Para	
	Escribir "Vector inicializado con exito"
FinSubProceso

SubProceso restaVectores(N,vectorA,vectorB,vectorC)
	Definir i Como Entero
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		vectorC[i] = vectorB[i] - vectorA[i]
	Fin Para	
	Escribir "Vector inicializado con exito"
FinSubProceso

SubProceso menuMostrarVectores(N,vectorA,vectorB,vectorC)
	Definir vectorAVer Como Caracter
	
	Escribir "Ingrese el vector a ver (A,B,C)"
	Leer vectorAVer
	
	Segun Mayusculas(vectorAVer) Hacer
		'A':
			mostrarVector(N,vectorA)
		'B':
			mostrarVector(N,vectorB)
		'C':
			mostrarVector(N,vectorC)
		De Otro Modo:
			Escribir "Escriba una opcion valida"
	Fin Segun
FinSubProceso

SubProceso mostrarVector(N,vector)
	Definir i Como Entero
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Escribir Sin Saltar "[" vector[i] "] "
	Fin Para
	Escribir ""
FinSubProceso
	