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
	  
		return cosas.any({objeto => objeto.peso() == unPeso})

	}

	method pesoTara() {
	  
		return 1000

	}

	method pesoTotal() {
	  
		return self.pesoTara() + self.pesoTotalCarga()

	}

	method pesoTotalCarga() {
	  
		return cosas.sum({objeto => objeto.peso()})

	}

	method estaExcedidoDePeso() {
	  
		return self.pesoTotal() > self.pesoMaximoAceptable()

	}

	method pesoMaximoAceptable() {
	  
		return 2500

	}

	//retorna la primera cosa que tiene el nivel de peligrosidad dado
	method tieneAlgoPeligrosoNivel(unNivel) {
	  
		return cosas.find({objeto => objeto.nivelPeligrosidad() == unNivel})

	}

	//retorna una lista de cosas mas peligrosas que UN NIVEL
	method cosasQueSonMasPeligrosasQueNivel(unNivel) {
	  
		return cosas.filter({objeto => objeto.nivelPeligrosidad() > unNivel})

	}

	//retorna una lista de cosas mas peligrosas que el objeto dado
	method cosasMasPeligrosasQue(unaCosa) {
	  
		return cosas.filter({objeto => objeto.nivelPeligrosidad() > unaCosa.nivelPeligrosidad()})

	}

	method puedeCircularEnRutaNivel(nivelPeligrosidad) {
	  
		return not self.estaExcedidoDePeso() && not self.tieneAlgoMasPeligrosoQueNivel(nivelPeligrosidad)

	}

	method tieneAlgoMasPeligrosoQueNivel(unNivel) {
	  
		return cosas.any({objeto => objeto.nivelPeligrosidad() >= unNivel})

	}

	method tieneAlgoQuePeseEntreY(primerValor, segundoValor) {
	  
	return cosas.any({ objeto => objeto.peso().between(primerValor, segundoValor) })

	}

	method cosaMasPesadaDelCamion() {
	  
		return cosas.max({ objeto => objeto.peso() })


	}

}

