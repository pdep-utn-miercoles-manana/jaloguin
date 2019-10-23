class Legion {

  var miembros
  
  constructor(unosMiembros) {
    self.validarMiembros(unosMiembros)
    miembros = unosMiembros
  }
  
  method validarMiembros(unosMiembros) {
    if(unosMiembros.size() < 2) {
      throw new LegionException(message = "Una legión debe tener al menos 2 miembros!")
    }  	
  }

  method intentarAsustar(unAdulto) {
    unAdulto.serAsustadoPor(self)
  }
  
  method recibirCaramelos(unosCaramelos) {
    self.lider().recibirCaramelos(unosCaramelos)
  }
  
  method tieneMuchosCaramelos() {
    return self.caramelos() > 15
  }
  
  method lider() {
    return miembros.max { unMiembro => unMiembro.capacidadDeSusto() }
  }  

  method caramelos() {
    return miembros.sum { unMiembro => unMiembro.caramelos() }
  }
  
  method capacidadDeSusto() {
    return miembros.sum { unMiembro => unMiembro.capacidadDeSusto() }
  }
 
}

class LegionException inherits Exception {}
