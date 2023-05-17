Algoritmo Desafio_guia_5
	Definir matriz_palabras, matriz_letra_por_letra, matriz_letra_por_letra_salida como caracter
	Definir longitud_palabras, posicion_r Como Entero
	Dimension matriz_palabras[1,9], matriz_letra_por_letra[12,9], matriz_letra_por_letra_salida[12,9], longitud_palabras[1,9],posicion_r[1,9]
	inicializarMatriz(matriz_palabras,matriz_letra_por_letra,longitud_palabras,posicion_r,matriz_letra_por_letra_salida)
	agregarPalabra(matriz_palabras, matriz_letra_por_letra, longitud_palabras)
	buscarR(matriz_letra_por_letra, longitud_palabras, posicion_r)
	imprimirMatriz(matriz_letra_por_letra, longitud_palabras, posicion_r,matriz_letra_por_letra_salida)
FinAlgoritmo

SubProceso inicializarMatriz(matriz_palabras Por Referencia, matriz_letra_por_letra Por Referencia,longitud_palabras por referencia, posicion_r por referencia,matriz_letra_por_letra_salida Por Referencia)
	Definir i,j Como Entero
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		matriz_palabras[0,i]<-"*"
		longitud_palabras[0,i]<-0
		posicion_r[0,i]<-0
		Para j<-0 Hasta 11 Con Paso 1 Hacer
			matriz_letra_por_letra[j,i]<-"*"
			matriz_letra_por_letra_salida[j,i]<-"*"
		Fin Para
	Fin Para
FinSubProceso

SubProceso imprimirMatriz(matriz_letra_por_letra Por Referencia, longitud_palabras Por Referencia, posicion_r Por Referencia,matriz_letra_por_letra_salida por referencia)
	Definir i,j Como Entero
	acomodarPalabra(matriz_letra_por_letra, longitud_palabras, posicion_r,matriz_letra_por_letra_salida)
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		Para j<-0 Hasta 11 Con Paso 1 Hacer
			Escribir sin saltar matriz_letra_por_letra[j,i]
		Fin Para
		Escribir " "
	Fin Para
	Escribir " "
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		Para j<-0 Hasta 11 Con Paso 1 Hacer
			Escribir sin saltar matriz_letra_por_letra_salida[j,i]
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso

SubProceso agregarPalabra(matriz_palabras Por Referencia, matriz_letra_por_letra Por Referencia, longitud_palabras Por Referencia)
	Definir i, j Como entero
	Definir palabra Como Caracter
	i=0
	Hacer
		Escribir "Ingrese la palabra para la fila ",i+1
		Leer palabra
		matriz_palabras[0,i]<-palabra
		longitud_palabras[0,i]<-longitud(palabra)
		Para j<-0 Hasta longitud_palabras[0,i]-1 Con Paso 1 Hacer
			matriz_letra_por_letra[j,i]=Subcadena(palabra,j,j)
		Fin Para
		i<-i+1
	Mientras Que i<9
FinSubProceso

SubProceso buscarR(matriz_letra_por_letra Por Referencia, longitud_palabras Por Referencia, posicion_r Por Referencia)
	Definir i, j, contador Como entero
	contador=0
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		Para j<-0 Hasta 11 Con Paso 1 Hacer
			Si minusculas(matriz_letra_por_letra[j,i])=="r" Entonces
				contador=contador+1
				Si contador==1 Entonces
					posicion_r[0,i]=j
				Fin Si
			Fin Si
		Fin Para
		contador=0
	Fin Para
FinSubProceso

SubProceso acomodarPalabra(matriz_letra_por_letra Por Referencia, longitud_palabras Por Referencia, posicion_r Por Referencia,matriz_letra_por_letra_salida por referencia)
	Definir i,j, k, empezar_palabra Como Entero
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		k=0
		empezar_palabra=5-posicion_r[0,i]
		Para j<-empezar_palabra Hasta 11 Con Paso 1 Hacer
			matriz_letra_por_letra_salida[j,i]=matriz_letra_por_letra[k,i]
			k<-k+1
		Fin Para
	Fin Para
FinSubProceso
	