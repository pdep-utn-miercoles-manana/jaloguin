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
    
}