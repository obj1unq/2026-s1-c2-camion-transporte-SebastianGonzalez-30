import camion.*
import cosas.*

object ruta9 {
  
    method cumpleCondicionesDeViaje() {
      
        return camion.puedeCircularEnRutaNivel(20)


    }
}

object caminosVecinales {
  
    var pesoMaximoPermitido = 0 

    method cumpleCondicionesDeViaje() {
      
        return camion.pesoTotal() <= pesoMaximoPermitido

    }

    method pesoMaximoPermitido(_pesoMaximoPermitido) {
      
        pesoMaximoPermitido = _pesoMaximoPermitido

    }

}

