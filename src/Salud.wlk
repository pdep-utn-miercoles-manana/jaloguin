import Chico.*

object sano {
	method actitud(unChico) = unChico.actitud()
	method comerCaramelos(unChico, unaCantidad) {
		if (unaCantidad > 10) unChico.empachate()
	}
}

object empachado {
	method actitud(unChico) = unChico.actitud() / 2
	method comerCaramelos(unChico, unaCantidad) {
		if (unaCantidad > 10) unChico.poneteEnCama()
	}
}

object cama {
	method actitud(unChico) = 0
	method comerCaramelos(unChico, unaCantidad) {
		throw new ChicoException(message = 'No puede comer más')
	}
}