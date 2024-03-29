class Adulto {

  var cuantosChicosIntentaronAsustarme
  
  method serAsustadoPor(unAsustador) {
    self.asustarseSiPuedeSerAsustado(unAsustador)
    self.contarChicoSiCorresponde(unAsustador)
  }
		
  method asustarseSiPuedeSerAsustado(unAsustador) {
    if(self.puedeSerAsustadoPor(unAsustador)) {
      unAsustador.recibirCaramelos(self.cantidadDeCaramelosAEntregar())
    }
  }
  
  method puedeSerAsustadoPor(unAsustador) {
    return self.tolerancia() < unAsustador.capacidadDeSusto()
  }
  
  method tolerancia() {
    return 10 * cuantosChicosIntentaronAsustarme
  }

  method contarChicoSiCorresponde(unAsustador) {
    if(unAsustador.tieneMuchosCaramelos()) {
      cuantosChicosIntentaronAsustarme++
    }
  }
  
  method cantidadDeCaramelosAEntregar() {
    return self.tolerancia() / 2
  }

}

class Abuelo inherits Adulto {
  override method puedeSerAsustadoPor(unAsustador) = true
  override method cantidadDeCaramelosAEntregar() = super() / 2
}

class AdultoNecio inherits Adulto {
	override method puedeSerAsustadoPor(unAsustador) = false
}
