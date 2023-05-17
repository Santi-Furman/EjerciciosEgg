//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.
Algoritmo ejercicio3extra_guia5_encuentro20
	Definir vector1 como Cadena
	Definir vector2 Como Entero
	Definir N Como Entero
	
	Escribir "Ingresar el tamano de los vectores"
	Leer N
	
	Dimension vector1[N]
	Dimension vector2[N]
	
	llenarVectorNombre(N,vector1)
	longitudVector(vector1,vector2,N)
	mostrarVector(N,vector1,vector2)
	
FinAlgoritmo

SubProceso llenarVectorNombre(N,vector)
	Definir i Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre"
		Leer vector[i] 
	Fin Para
	Escribir "Vector inicializado con exito"
FinSubProceso

SubProceso longitudVector(vector1,vector2,N)
	Definir i Como Entero
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		vector2[i]= Longitud(vector1[i])
	Fin Para
FinSubProceso

SubProceso mostrarVector(N,vector1,vector2)
	Definir i Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Escribir "El nombre es: " ,vector1[i] ," ","Su longitud es: " vector2[i]
	Fin Para
FinSubProceso