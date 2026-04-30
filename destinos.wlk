import camion.*
import cosas.*


object almacen {
  
    var cosasEnAlmacen = #{} 

    method guardarCosas() {
      
        cosasEnAlmacen.addAll(camion.cosas())
        camion.quitarCosas()

    }

    method cosasEnAlmacen(_cosasEnAlmacen) {
      
        cosasEnAlmacen = _cosasEnAlmacen

    }

    method cosasEnAlmacen() {
      
        return cosasEnAlmacen

    }

}