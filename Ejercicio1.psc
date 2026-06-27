Algoritmo Ejercicio1
	
	Definir precioProducto Como Caracter
	Definir caracterActual Como Caracter
	
	Definir porcentajeDescuento Como Real
	Definir valorDescontar Como Real 
	Definir precioFinal Como Real
	
	Definir esNumeroValido Como Logico
	Definir Salir Como Logico
	

	porcentajeDescuento <- 10
	maxLong <- 10
	Salir <- Falso
	
	Escribir "¡FELICITACIONES, TIENES UN DESCUENTO DEL ", porcentajeDescuento,"% en un producto!"

	Mientras Salir = Falso 
		esNumeroValido <- Verdadero
		
		Escribir "------------------------------------------------------------"
		Escribir "Ingresa el precio del producto (o exit para salir):"
		Leer precioProducto

		Si precioProducto = "exit" 
            Salir <- Verdadero
            Escribir "Saliendo del programa..."
        SiNo            
            Si Longitud(precioProducto) = 0 O Longitud(precioProducto) > maxLong
                esNumeroValido <- Falso
            SiNo
                
                i <- 1
                Mientras i <= Longitud(precioProducto) Y esNumeroValido = Verdadero
                    caracterActual <- SubCadena(precioProducto, i, i)
					
                    Si (caracterActual < "0" O caracterActual > "9")
                        esNumeroValido <- Falso
                    FinSi
                    i <- i + 1
                FinMientras
                
                Si esNumeroValido = Verdadero
                    Si ConvertirANumero(precioProducto) = 0
                        esNumeroValido <- Falso
                    FinSi
                FinSi
			FinSi
			
				Si esNumeroValido = Falso 
					Escribir "ERROR: Solo se aceptan valores numericos enteros superiores a 0 y de máximo 10 digitos..."
				SiNo
						valorDescontar <- Convertiranumero(precioProducto) * porcentajeDescuento / 100
						PrecioFinal <- ConvertirANumero(precioProducto) - valorDescontar
						
						Escribir "El precio de tu producto es de: ", precioProducto, "$"
						Escribir "Se te descontará un total de: ", valorDescontar, "$"
						Escribir "---------------------------------------------------"
						EScribir "¡El precio final a pagar es de solo ", precioFinal, "$!"
				FinSi
		FinSi
	FinMientras
FinAlgoritmo