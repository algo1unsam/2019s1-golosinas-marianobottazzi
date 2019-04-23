import golosinas.*

object mariano {
	var golosinas = #{}
	var noCompradas = #{}
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(unaGolosina) { golosinas.add(unaGolosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return golosinas 
	}
	method desecharGolosinas(unaGolosina) { golosinas.remove(unaGolosina) }
	method probarGolosinas() { golosinas.forEach { unaGolosina => unaGolosina.mordisco() } }
	method hayGolosinaSinTACC() { 
		return golosinas.any( { unaGolosina => unaGolosina.LibreDeGluten() } )
	//	return golosinas.findOrElse( { unaGolosina => unaGolosina.libreGluten(), {false} } )
	
	//  return !golosinas.filter( { unaGolosina => unaGolosina.libreGluten() } ).Empty()
	}
	method precioCuidados() {
		return golosinas.all( { unaGolosina => unaGolosina.precio() } )
	}
	method golosinaDeSabor(unSabor) {
		return golosinas.find( { unaGolosina => unaGolosina.sabor() == unSabor } )
	}
	method golosinasDeSabor(unSabor) {
		return golosinas.filter( { unaGolosina => unaGolosina.sabor() == unSabor } )
	}	
	method sabores() {
		return golosinas.map( { unaGolosina => unaGolosina.sabor() } ).asSet()
	}
	method golosinaMasCara(){
		return golosinas.max( { unaGolosina => unaGolosina.sabor() } )
	}
	method pesoGolosinas() {
		return golosinas.sum( { unaGolosina => unaGolosina.peso() } )
	}
	
	method golsinasFaltantes(unaColeccion) { return noCompradas.
		map( unaColeccion.remove(golosinas)).asSet()
	}
	 
	method noCompradas() { return noCompradas }
	 
	method saboresFaltantes(unaColeccion) {  }
	

}

