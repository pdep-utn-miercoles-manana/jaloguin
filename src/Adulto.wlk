class Adulto {

  var cuantosChicosIntentaronAsustarme
  
  method serAsustadoPor(unChico) {
    if(self.puedeSerAsustadoPor(unChico)) {
      unChico.recibirCaramelos(self.cantidadDeCaramelosAEntregar())
    } else {
      self.contarChicoSiCorresponde(unChico)
    }
  }
  
  method puedeSerAsustadoPor(unChico) {
    return self.tolerancia() < unChico.capacidadDeSusto()
  }
  
  method tolerancia() {
    return 10 * cuantosChicosIntentaronAsustarme
  }

  method contarChicoSiCorresponde(unChico) {
    if(unChico.tieneMuchosCaramelos()) {
      cuantosChicosIntentaronAsustarme++
    }
  }
  
  method cantidadDeCaramelosAEntregar() {
    return self.tolerancia() / 2
  }
    
}

class Abuelo inherits Adulto {
  override method puedeSerAsustadoPor(unChico) = true
  override method cantidadDeCaramelosAEntregar() = super() / 2
}

class AdultoNecio inherits Adulto {
	override method puedeSerAsustadoPor(unChico) = false
}
