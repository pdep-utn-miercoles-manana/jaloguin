class Chico {

  var actitud
  const property elementosDisfraz
  
  method capacidadDeSusto() {
    return self.sustoDeDisfraz() * actitud
  }
  
  method sustoDeDisfraz() {
    return elementosDisfraz.sum { elemento => elemento.poderDeSusto() }
  }
  
}