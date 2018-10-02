import wollok.game.*
import plantas.*

object hector {
	var property oroAcumulado = 0
	var property posicion = game.at(0,0)
	method imagen () {return "player.png"}
	method plantaMaiz () {if (game.colliders(self).size() == 0) game.addVisualIn (new Maiz(), posicion.clone())}
	method plantaTrigo () {if (game.colliders(self).size() == 0) game.addVisualIn (new Trigo(), posicion.clone())}
	method plantaTomaco () {if (game.colliders(self).size() == 0) game.addVisual (new Tomaco(posicion = posicion.clone()))
	}
	method regarPlanta () {
		if (game.colliders(self).size() != 0)
		game.colliders(self).get(0).regar()
		else game.error ("No tengo nada para regar!")
	}
	method cosecharPlanta () {
		if (game.colliders(self).size() != 0)
		game.colliders(self).get(0).regar()
	}
}
