class Barrio {

  var habitantes
  
  method losTresNiniosQueMasCaramelosTienen() {
    return self.ordenarALesPibesPorCaramelos().take(3)
  }
  
  method ordenarALesPibesPorCaramelos() {
    return habitantes.sortedBy { unNinio, otroNinio => unNinio.caramelos() > otroNinio.caramelos() }
  }
  
}