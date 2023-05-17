Funcion detectado <- genZ ( matriz,N)
	Definir i Como Entero
	Definir detectado Como Logico
	Definir D1,D2 Como Caracter
	
	detectado=Verdadero
	i=0
	D1=matriz[i,i]
	D2=matriz[i,N-1-i]
	Repetir
		
		Si matriz[i,i] <> D1 Entonces
			detectado=Falso
		FinSi
		Si matriz[i,N-1-i] <> D2 Entonces
			detectado=Falso
		FinSi
		i=i+1
	Mientras Que detectado y i<N
	
Fin Funcion

Algoritmo ejercicio_integrador
	Definir muestra,matriz Como Caracter
	Definir N Como Entero
	
	
	//comprobar que el valor de entrada sea una palabra COMPLETA de 9 caracteres, de 16 caracteres o de 1369
	verificarDimension(muestra)
	
	//Obtener dimension
	N=raiz(Longitud(muestra))
	Dimension matriz[N,N]
	
	//llenar matriz con la muestra
	llenarMatriz(N,matriz,muestra)
	
	//mostrar matriz
	mostrarMatriz(N,matriz)
	
	//Funcion logica genZ
	Si genZ(matriz,N) Entonces
		Escribir "Se ha detectado el genZ en la muestra"
	SiNo
		Escribir "No se ha detectado el genZ en la muestra"
	FinSi
	
	
	
	
FinAlgoritmo

SubProceso  llenarMatriz(N,matriz,muestra)
	Definir i,j,k Como Entero
	k=0
	Para i<-0 Hasta N-1 Hacer
		Para j<-0 Hasta N-1 Hacer
			matriz[i,j]=Subcadena(muestra,k,k)
			k=k+1
		FinPara
	FinPara
	Escribir 'Matriz inicializada con exito'
FinSubProceso

SubProceso mostrarMatriz(N,matriz)
	Definir i,j Como Entero
	
	Para i=0 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir Sin Saltar "[",matriz[i,j],"]"
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso

Subproceso verificarDimension(muestra Por Referencia)
	Definir valido como Logico
	valido=Falso
	
	Repetir
		muestra="CDDACCACCACAAABC"
		muestra=Mayusculas(muestra)
		Segun Longitud(muestra) Hacer
			9,16,1369:
				Escribir "La cantidad de caracteres es valida"
				valido=Verdadero
			De Otro Modo:
					Escribir "La cantidad de caracteres de la muestra no es compatible con ningun modelo. Intente de nuevo"
		Fin Segun
		Mientras Que no valido
FinSubProceso




