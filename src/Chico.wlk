import Salud.*

class Chico {

  var salud = sano
  var caramelos
  var property actitud
  const elementosDisfraz = []
  
  method capacidadDeSusto() {
    return self.sustoDeDisfraz() * salud.actitud(self)
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
  	salud.comerCaramelos(self, unaCantidad)
  	caramelos -= unaCantidad
  }
  
  method validarCantidadCaramelos(unaCantidad) {
  	if (unaCantidad <= caramelos) {
  	  throw new ChicoException(message = 'No hay mas morfi')
  	}
  }
  
  method empachate() {
  	salud = empachado
  }

  method poneteEnCama() {
  	salud = cama
  }

}

class ChicoException inherits Exception {}