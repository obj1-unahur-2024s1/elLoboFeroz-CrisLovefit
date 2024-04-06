object feroz{
	var peso = 10
	
//	method estaSaludable() = peso.between(20,150) OTRA MANERA DE REPRESENTAR
	
	method estaSaludable(){
		return (peso >= 20 and peso <= 150)
	}
	
	method comer(comida){
		
//		if (comida == cazador) self.crisis() NO COMPARE IGUALDAD CON UN OBJETO, POR QUÉ?
		
		if (comida.name() == "cazador") self.crisis()
		else (peso += (comida.cuantoPesa() * 0.1))
		
	}
	
	method crisis(){
		peso = 10
	}
	
	method correr(){
		peso -= 1
	}
	
	method soplar(casa){
		peso = peso - casa.resistencia()
		peso = 0.max(peso)
	}
}

object caperucita{
	var manzanasEnCanasta = 6
	
	method name() = "caperucita"
	
	method cuantoPesa() = 60 + (manzanasEnCanasta * 0.2)
	
	method perdioManzanas(cant){
		manzanasEnCanasta -= cant
	}
}

object abuelita{
	method name() = "abuelita"
	
	method cuantoPesa() = 50
}

object cazador{
	method name() = "cazador"
	
	method cuantoPesa() = 80
}


object chanchito{
	method name() = "chanchito"
	
	method cuantoPesa() = 120
}


object casaDeMadera{
	var cantChanchitos = 2
	
	method resistencia() = 5 + (cantChanchitos * chanchito.cuantoPesa())
}

object casaDePaja{
	var cantChanchitos = 1
	
	method resistencia() = 0 + (cantChanchitos * chanchito.cuantoPesa())
}

object casaDeLadrillo{
	var cantChanchitos = 3
	var cantLadrillos = 50
	
	method resistencia() = (2 * cantLadrillos) + (cantChanchitos * chanchito.cuantoPesa())
}
 
