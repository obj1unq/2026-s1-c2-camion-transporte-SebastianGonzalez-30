object knightRider {
	
	method peso() { 
		
		return 500 
		
	}
	
	method nivelPeligrosidad() { 
		
		return 10 
	
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
	  
		return

	}

	method modo(_modo) {
	  
		modo = _modo

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


} 

object bateriaAntiAerea {
  
	var tieneMisiles = false 

	method tieneMisiles() {
	  
		return tieneMisiles

	}

	method cargarMisiles() {
	  
		tieneMisiles = true

	}

	method peso() {
	  
		return 
		if (tieneMisiles) {
        
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
    
	
	return 
		if (tieneMisiles) {
        
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

}




