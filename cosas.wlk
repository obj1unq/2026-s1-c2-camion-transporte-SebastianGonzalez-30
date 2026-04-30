object knightRider {
	
	method peso() { 
		
		return 500 
		
	}
	
	method nivelPeligrosidad() { 
		
		return 10 
	
	}

	method bultosQueOcupa() {
	  
		return 1

	}

	method consecuenciasDeAccidente() {
	  
		// No le pasa nada, es para mantener el polimorfismo

	}

}

object arenaAGranel {
  
	var peso = 0

	method peso() { 
		
		return peso 
		
	}

	method peso(_peso) {
	  
		peso = _peso

	}
	
	method nivelPeligrosidad() { 
		
		return 1 
	
	}

	method bultosQueOcupa() {
	  
		return 1

	}

	method consecuenciasDeAccidente() {
	  
		peso = peso + 20

	}

}

 object bumblebee {
   
	var modo = "auto"

	method peso() { 
		
		return 800 
		
	}
	
	method nivelPeligrosidad() {
    
	return 
	
		if (modo == "auto") {
        
			self.peligrosidadAuto()
    	} 
		
		else if (modo == "robot") {
        
			self.peligrosidadRobot()
    	} 
		else {
        
		self.error("Bumblebee no está en un modo correcto")
		}
	
	}

	method peligrosidadAuto() {
	  
		return 15

	}

	method peligrosidadRobot() {

		return 30

	}

	method modo() {
	  
		return modo

	}

	method modo(_modo) {
	  
		modo = _modo

	}

	method bultosQueOcupa() {
	  
		return 2

	}

	method consecuenciasDeAccidente() {
	  
		if (modo == "auto") {
        
			modo = "robot"
    	} 
		
		else if (modo == "robot") {
        
			modo = "auto"
    	} 
		
		}


	}



object paqueteDeLadrillos {
  
	var cantidadDeLadrillosPorPaquete = 0 

	method pesoPorLadrillo() {
	  
		return 2

	}

	method cantidadDeLadrillosPorPaquete() {
	  
		return cantidadDeLadrillosPorPaquete

	}

	method cantidadDeLadrillosPorPaquete(_cantidadDeLadrillosPorPaquete) {
	  
	cantidadDeLadrillosPorPaquete = _cantidadDeLadrillosPorPaquete

	}

	method nivelPeligrosidad() {
	  
		return 2

	}

	method peso() {
	  
		return cantidadDeLadrillosPorPaquete * self.pesoPorLadrillo()

	}

	method bultosQueOcupa() {
	  
		return 
	
		if (self.cantidadDeLadrillosPorPaquete() <= 100) {
        
			1
    	} 
		
		else if (self.cantidadDeLadrillosPorPaquete().between(101, 300)) {
        
			2
    	} 
		else {
        
			3

		}
	
	}

	method consecuenciasDeAccidente() {
	  
		if (cantidadDeLadrillosPorPaquete <= 12) {

			cantidadDeLadrillosPorPaquete = 0
		}
		else {

			cantidadDeLadrillosPorPaquete = cantidadDeLadrillosPorPaquete - 12
		}

	}


} 

object bateriaAntiAerea {
  
	var misilesCargados = false 

	method misilesCargados() {
	  
		return misilesCargados

	}

	method cargarMisiles() {
	  
		misilesCargados = true

	}

	method peso() {
	  
		return 
		if (misilesCargados) {
        
		self.pesoConMisiles()

    	} 
	else  {
        
		self.pesoSinMisiles()
    } 
	}

	method pesoConMisiles() {
	  
		return 300

	}

	method pesoSinMisiles() {
	  
		return 200

	}

	method nivelPeligrosidad() {
    
	
	return if (misilesCargados) {
        
		self.peligrosidadConMisiles()
    	} 
	else {
        
		self.peligrosidadSinMisiles()
    }
	
	}

	method peligrosidadConMisiles() {
	  
		return 100

	}

	method peligrosidadSinMisiles() {
	  
		return 0

	}

	method bultosQueOcupa() {
	  
		return if (misilesCargados) {

			2
		} else {

			1
		}

	}

	method consecuenciasDeAccidente() {
	  
		misilesCargados = false

	}

}


object residuosRadioactivos {
  
	var peso = 5 

	method peso() {
	  
		return peso

	}

	method peso(_peso) {
	  
		peso = _peso

	}

	method nivelPeligrosidad() {
	  
		return 200

	}

	method bultosQueOcupa() {
	  
		return 1

	}

	method consecuenciasDeAccidente() {
	  
		peso = peso + 15

	}
}

object contenedorPortuario {
  
	var property cosasQueContiene = #{}

	method peso() {
	  
		return 100 + cosasQueContiene.sum({objeto => objeto.peso()})

	}

	method nivelPeligrosidad() {
	
		const peligrosidadDeCosas = cosasQueContiene.map({objeto => objeto.nivelPeligrosidad()})
		
		return peligrosidadDeCosas.maxIfEmpty({0})


	}

	method bultosQueOcupa() {
	  
		return 1 + cosasQueContiene.sum({objeto => objeto.bultosQueOcupa()})

	}

	method cosasQueContiene(_cosasQueContiene) {
	  
		cosasQueContiene = _cosasQueContiene

	}

	method consecuenciasDeAccidente() {

		cosasQueContiene.forEach({ objeto => objeto.consecuenciasDeAccidente()})

	}

}

object embalajeDeSeguridad {
  
	var cosaQueEnvuelve = null 

	method cosaQueEnvuelve(_cosaQueEnvuelve) {
	  
		cosaQueEnvuelve = _cosaQueEnvuelve

	}
	
	
	method peso() {
	  
		return cosaQueEnvuelve.peso()

	}

	method nivelPeligrosidad() {
	  
		return cosaQueEnvuelve.nivelPeligrosidad() / 2

	}

	method bultosQueOcupa() {
	  
		return 2

	}

	method consecuenciasDeAccidente() {
	  
		// no hace nada, es para polimorfismo

	}

}


