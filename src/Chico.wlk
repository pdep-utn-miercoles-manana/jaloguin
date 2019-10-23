class Chico {

  var actitud
  var caramelos
  const elementosDisfraz = []
  
  method capacidadDeSusto() {
    return self.sustoDeDisfraz() * actitud
  }
  
  method sustoDeDisfraz() {
    return elementosDisfraz.sum { elemento => elemento.poderDeSusto() }
  }
 
  method intentarAsustar(unAdulto) {
    unAdulto.serAsustadoPor(self)
  }

  method recibirCaramelos(unosCaramelos) {
    caramelos += unosCaramelos
  }
  
  method tieneMuchosCaramelos() {
    return caramelos > 15
  }

  method comerCaramelos(unaCantidad) {
  	self.validarCantidadCaramelos(unaCantidad)
  	caramelos -= unaCantidad
  }
  
  method validarCantidadCaramelos(unaCantidad) {
  	if (unaCantidad <= caramelos) {
  	  throw new ChicoException(message = 'No hay mas morfi')
  	}
  }

}

class ChicoException inherits Exception {}