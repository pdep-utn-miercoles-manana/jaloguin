class Barrio {

  var habitantes
  
  method losTresNiniosQueMasCaramelosTienen() {
    return self.ordenarALesPibesPorCaramelos().take(3)
  }
  
  method ordenarALesPibesPorCaramelos() {
    return habitantes.sortedBy { unNinio, otroNinio => unNinio.caramelos() > otroNinio.caramelos() }
  }
  
  method elementosSinRepetidosUsadosPorLosNiniosConMasDe10Caramelos() {
    return self.habitantesConMasDe10Caramelos().flatMap { unNinio => unNinio.elementosDeDisfraz() }.asSet()
  }
  
  method habitantesConMasDe10Caramelos() {
    return habitantes.filter { unChico => unChico.caramelos() > 10 }
  }

}