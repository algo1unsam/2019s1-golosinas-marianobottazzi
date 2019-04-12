object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() = "frutilla"
	method libreGluten() { return true }
}

object alfajor {
	// definir
}

object caramelo {
	// definir
}

object chupetin {
	// definir
}

object oblea {
	// definir
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
}

object golosinaBaniada {
	var property golosinaInterior = bombon
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior + 2}
	method peso() { return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		pesoBanio = (pesoBanio - 2).max(0)
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	var property libreGluten = true
	var gusto = frutilla
	var peso = 5
	method peso() = peso
	method precio() = if(libreGluten) 7 else 10 
	method gusto() = gusto
	method mordisco() { peso = (peso - 1).max(0); 	
//		if(gusto == "frutilla") gusto = "chocolate"
//		else {
//			if(gusto == "chocolate") gusto = "naranja" 
//			else gusto = "frutilla"
//		}
		gusto = gusto.gustoSiguiente()
		
	}
}

object frutilla{ method gustoSiguiente() = chocolate }
object chocolate{ method gustoSiguiente() = naranja }
object naranja{ method gustoSiguiente() = frutilla }