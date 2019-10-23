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

}

class LegionException inherits Exception {}