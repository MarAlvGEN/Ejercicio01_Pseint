Algoritmo Ejercicio2
	
	Definir porcentajeDescuento Como Entero
	
	Definir precioCompra Como Real
	Definir precioFinal Como Real
	
	Escribir "¡BIENVENIDO A ESTA TIENDA ONLINE!"
	Escribir "¡TE DAREMOS UN DESCUENTO DEPENDIENDO DEL TOTAL DE LA COMPRA!"
	Escribir "------------------------------------------------------------"
	Escribir "¡Coloca el precio de compra para descubrir tu descuento!"
	
	Leer precioCompra
	
	Si precioCompra > 500000
		
		porcentajeDescuento <- 15
		
		Escribir "Tu compra Original es de: ", precioCompra
		Escribir "Tu descuento es del: ", porcentajeDescuento, "%"
		
		precioFinal <- precioCompra - (precioCompra * porcentajeDescuento / 100)
		EScribir "Tu precio final es de: ", precioFinal, "$"	
		
	SiNo
		Si precioCompra >= 200000 Y precioCompra <= 500000
			
			porcentajeDescuento <- 10
			
			Escribir "Tu compra Original es de: ", precioCompra
			Escribir "Tu descuento es del: ", porcentajeDescuento, "%"
			
			precioFinal <- precioCompra - (precioCompra * porcentajeDescuento / 100)
			EScribir "Tu precio final es de: ", precioFinal, "$"	
		SiNo 
			Si precioCompra <= 200000 y precioCompra >= 1
				
				porcentajeDescuento <- 0
				
				Escribir "Tu compra Original es de: ", precioCompra
				Escribir "Tu descuento es del: ", porcentajeDescuento, "% XD"
				
				precioFinal <- precioCompra - (precioCompra * porcentajeDescuento / 100)
				EScribir "Tu precio final es de: ", precioFinal, "$"	
			SiNo
				Escribir "ERROR COLOCA UN NUMERO SUPERIOR A 0"
			FinSi
		FinSi
	FinSi
	
	
FinAlgoritmo