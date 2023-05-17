Algoritmo calculadoraMateriales
	menu;
	
FinAlgoritmo

SubProceso menu()
	Definir opciones Como entero
	
	Hacer
		Escribir "==========================================="
		Escribir "Escoja un número de las opciones del menú"
		Escribir "1. Calcular muro de ladrillo"
		Escribir "2. Calcular viga de hormigón"
		Escribir "3. Calcular columnas de hormigón"
		Escribir "4. Calcular contrapisos"
		Escribir "5. Calcular techo"
		Escribir "6. Calcular pisos"
		Escribir "7. Calcular pintura"
		Escribir "8. Calcular iluminación"
		Escribir "9. Salir" 
		Escribir "==========================================="
		Leer opciones
		
		Segun opciones Hacer
			1:
				calcularMuro();
			2:
				calcularViga();
			3:
				calcularColumna();
			4:
				calcularContrapisos();
			5:
				calcularTecho();
			6:
				calcularPisos();
			7:
				calcularPintura();
			8:
				calcularIluminacion();
			9:
				Escribir "Gracias por visitarnos";	
			De Otro Modo:
						Escribir "Ingrese una opción correcta por favor!";	
		Fin Segun
	Mientras Que opciones<>9;
	
FinSubProceso
//funciones que utilizan los otros SubProceso ;
Funcion superficie<-calcularSuperficie(largo,alto)
		Definir superficie Como Real
	//Calculamos la superficie con la fórmula de área de rectángulo
	superficie<- largo * alto ;
	
FinFuncion

Funcion volumen<-calcularVolumen(espesor,largo,alto)
	Definir volumen Como Real
	volumen <- espesor * largo * alto ;
	
FinFuncion




SubProceso calcularMuro()
	//	Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. Luego el largo y el alto. A partir
	//	de estos datos se debe mostrar al usuario la superficie del muro y la cantidad de materiales que
	//	necesitaremos para construirlo.
	//	Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena y 120 ladrillos.
	//	Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena y 90 ladrillos.
	
	Definir espesor Como Entero;
	Definir largo, alto, area, volumen como Real;
	Definir validacion Como Logico;
	validacion = Falso;
	area = 0;
	volumen  = 0;
	
	Repetir
		Escribir "Ingrese espesor (20 o 30 cm)" Sin Saltar;
		Leer espesor;
		Si espesor == 20 o espesor == 30 Entonces
			validacion = Verdadero;
		FinSi
	Mientras Que validacion == Falso
	
	Escribir "Ingrese el largo:" Sin Saltar;
	Leer largo;
	Escribir "Ingrese el alto:" Sin Saltar;
	Leer alto;
	
	area = calcularSuperficie(largo, alto);
	
	Si espesor == 30  Entonces
		Escribir "La superficie del muro es: ", area "m^2 y se necesitarán los siguiente materiales (x metro cuadrado):";
		Escribir "-", area*15.2 " kg de cemento"
		Escribir "-", area*0.115 " m^3 de arena"
		Escribir "-", area*120 " de ladrillos"
	SiNo
		Escribir "La superficie del muro es: ", area "m^2 y se necesitarán los siguiente materiales (x metro cuadrado):";
		Escribir "-", area*10.9 " kg de cemento"
		Escribir "-", area*0.09 " m^3 de arena"
		Escribir "-", area*90 " de ladrillos"
	FinSi
	
FinSubProceso

SubProceso calcularViga()
	//Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán://
	//9 kg de cemento, 0.02  m3 de arena, 0.02 m2 de piedra,
	// 4 m de hierro del 8 y 3 m de hierro del 4.
	//Debemos mostrar al usuario la cantidad de materiales necesaria.
	Definir largo Como Real
	Definir CEMENTO, ARENA, PIEDRA, HIERROx8, HIERROx4 Como Real
	
	//Valores materiales
	CEMENTO = 9
	ARENA = 0.02
	PIEDRA = 0.02
	HIERROx8 = 4
	HIERROx4 = 3
	
	Escribir "Calcular viga de hormigón"
	
	Hacer
		Escribir "Ingrese el largo de la viga:" Sin Saltar
		leer largo
		
		Si largo < 0 Entonces
			Escribir "El valor ingresado no es válido."
		FinSi
	Mientras Que largo < 0
	
	Escribir ""
	Escribir "Cantidad de materiales necesarios:"
	Escribir "------------------------"
	Escribir "Cemento: ", CEMENTO * largo, " kg."
	Escribir "Arena: ", ARENA * largo, " m³."
	Escribir "Piedra: ", PIEDRA * largo, " m²."
	Escribir "Hierro del 8: ", HIERROx8 * largo, " m."
	Escribir "Hierro del 4: ", HIERROx4 * largo, " m"
	Escribir "------------------------"
	Escribir ""
	
FinSubProceso



SubProceso calcularColumna()
	//Nos debe pedir el largo de la columna. Por metro lineal de columna se necesitarán: 7.5 kg de
	// cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
	// Debemos mostrar al usuario la cantidad de materiales necesaria.
	
	Escribir 'Largo de la columna (metro lineal): ' Sin Saltar;
	Definir largo_columna, cmento, arna, pdra, hierro10, hierro4 Como Real;
	Leer largo_columna;
	
	Escribir "Cantidad de materiales de construcción: ";
	
	cmento<-7.5*largo_columna;
	arna <-0.016*largo_columna;
	pdra <-0.016*largo_columna;
	hierro10 <-6*largo_columna;
	hierro4 <-3*largo_columna;
	
	
	Escribir "Cemento: ", cmento, " kg";
	Escribir "Arena: ", arna, " m3";
	Escribir "Piedra: ", pdra, " m3";
	Escribir "hierro de 10: ", hierro10, " m";
	Escribir "hierro de 4: ", hierro4, " m";
	
FinSubProceso

SubProceso calcularContrapisos()
	//Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
	//Por metro cúbico de contrapiso se necesita:
	// 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de piedra.
	// Debemos mostrar al usuario la cantidad de materiales necesaria.
	Definir volumen, cemento, arena, piedra ,alto,espesor, largo Como Real;
	Escribir "Cálculo de contrapisos";
	Escribir "Ingresa (en metros): largo, alto, espesor";
	Leer largo, alto, espesor;
	
	volumen = calcularVolumen(espesor,largo,alto);
	cemento = volumen * 105;
	arena = volumen * 0.45;
	piedra = volumen * 0.9;
	
	Escribir "Necesitas: ", cemento, " kilos de cemento, ",arena, " metros cúbicos de arena y ",piedra, " metros cúbicos de piedra";		
FinSubProceso


SubProceso calcularTecho()
	//Nos debe pedir espesor, ancho y largo del techo a calcular.
	//Por metro cuadrado de techo se necesita: 33 kg de cemento, 0.072 m3 de arena, 0.072 m3 de
	// piedra, 7 m de hierro del 8 y 4 m de hierro del 6
	// Debemos mostrar al usuario la cantidad de materiales necesaria.
	Definir espesor,ancho,largo Como Real;
	Definir metrosCuadradosTecho,cemento,arena,piedra,hierro6,hierro8 Como Real;
	
	Escribir "Ingrese  el espesor, el largo y ancho del techo";
	Leer espesor,largo,ancho;
	
	metrosCuadradosTecho = calcularVolumen(espesor,largo,ancho);
	cemento= metrosCuadradosTecho * 33;
	arena= metrosCuadradosTecho * 0.072;
	piedra= metrosCuadradosTecho * 0.072;
	hierro8= metrosCuadradosTecho * 7;
	hierro6= metrosCuadradosTecho * 6;
	
	Escribir "Para el techo de " metrosCuadradosTecho " m3, se necesitan: ";
	Escribir "Cemento: ",cemento ," kg";
	Escribir "Arena: ",arena, "m3";
	Escribir "Piedra: ",piedra, "m3";
	Escribir "Hierro del 8: ", hierro8," m";
	Escribir "Hierro del 6: ", hierro6, " m";
	
FinSubProceso


SubProceso calcularPisos()
	//Nos debe pedir ancho y largo del paño de piso a colocar. 
	//Teniendo esos datos se debe calcular la
	//superficie y añadirle un 10% extra por recortes
	//Mostrar el resultado en m2
	Definir ancho, largo, superficie como real;
	Escribir "Ingrese el ancho del paño de piso a colocar: ";
	leer ancho;
	Escribir "Ingrese el largo del paño de piso a colocar: ";
	leer largo;
	superficie = calcularSuperficie(largo, ancho);
	superficie = superficie + superficie * 0.1;
	Escribir "La superficie total es : " ,superficie," m2";
FinSubProceso


SubProceso calcularPintura()
	Definir litros_pinturas , largo , alto Como Real
	//Nos debe pedir la superficie del muro y mostrar 
	// cuánta pintura necesitamos teniendo en cuenta
	// que rinde 6 m2 por litro de pintura.
	Escribir "Ingrese la altura y largo del muro para su superficie : ";
	Leer largo , alto ;
	litros_pinturas = trunc(100 * calcularSuperficie(largo,alto) / 6) /100;
	Escribir "Necesitamos ",litros_pinturas," litros de pintura para ese muro";
	
	
FinSubProceso


SubProceso calcularIluminacion()
	Definir largo,ancho Como Entero;
	Escribir "Vamos a Calcular la iluminación";
	Escribir "Digita el largo de la pared";
	Leer largo;
	Escribir "Digita el ancho de la pared";
	Leer ancho;
	//Asumimos que nos basamos en la superficie total es decir 6 caras 
	Escribir "Se requieren como minimo:" (6*(calcularSuperficie(largo,ancho))) * 0.20 " metros de iluminación natural";
FinSubProceso