import wollok.game.*
import hector.*

class Maiz {
	var property adulto = false
	method imagen () {return if (adulto) "corn_baby.png"
		else "corn_adult.png"
	}
	method regar () {
		adulto = true
	}
	method cosechar () {if (adulto) }
}

class Trigo {
	var property evolucion = 0
	method imagen () {return "wheat_" + evolucion + ".png"}
	method regar () {if (evolucion != 4)evolucion += 1
		else evolucion = 0
	}
	method cosechar () { }
}

class Tomaco {
	var posicion
	var imagen = "tomaco.png"
	method regar () {
		if (posicion.y() != 9)
		posicion.y(posicion.y() + 1)
		else (posicion.y(0))	
	}
	method cosechar () { }
}