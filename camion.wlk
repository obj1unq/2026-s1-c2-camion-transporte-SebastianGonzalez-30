import cosas.*

object camion {
	const property cosas = #{}
		
	method cargar(unaCosa) {
		
		cosas.add(unaCosa)
	}

	method descargar(unaCosa) {
	  
		cosas.remove(unaCosa)

	}

	method sonCosasConPesoPar() {
	  
		return cosas.all({objeto => objeto.peso() % 2 == 0})

	}

	method esPesoPar(objeto) {
	  
		return objeto.peso() % 2 == 0

	}

	method algunoPesa(unPeso) {
	  
		cosas.any({objeto => objeto.peso() == unPeso})

	}
}

