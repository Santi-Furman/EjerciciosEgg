Algoritmo ejercicio15_guia1
	Definir HH1,MM1,SS1,segTotal,HH2,MM2,SS2, t0,tf como real
	
	Escribir "ingrese el tiempo en segundos: " 
	leer segTotal
	Escribir "ingrese la hora de salida: " 
	leer HH1
	Escribir "ingrese los minutos de salida: " 
	leer MM1
	Escribir "ingrese los segundos de salida: " 
	leer SS1
	
	//10:30:24
	//segundos total de viaje 30 minutos son 1800 segundos
	
	t0=HH1*3600+MM1*60+SS1 //convertir todo a segundos
	
	tf=t0+segTotal //Tiempo total del viaje en segundos
	
	HH2= trunc(tf/3600)
	MM2= trunc((tf mod 3600)/60 )
	SS2=tf-((HH2*3600) +(MM2*60))
	
	
	Escribir HH2,":",MM2,":",SS2
	
FinAlgoritmo
