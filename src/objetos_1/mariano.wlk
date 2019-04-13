import golosinas.*

object mariano {
	var golosinas = []
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(unaGolosina) { golosinas.add(unaGolosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	method desecharGolosinas(unaGolosina) { golosinas.remove(unaGolosina) }
	method probarGolosinas() { golosinas.forEach { unaGolosina => unaGolosina.mordisco() } }
	method hayGolosinaSinTACC() { 
		return golosinas.find( { unaGolosina => unaGolosina.libreGluten()  } )
	}
}

