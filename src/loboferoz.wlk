object feroz{
//	const pesoInicial = 10
	var peso = 10
	
//	method estaSaludable() = peso.between(20,150) OTRA MANERA DE REPRESENTAR
	
	method estaSaludable(){
		return (peso >= 20 and peso <= 150)
	}
	
	method comer(comida){
		if (comida == cazador) self.crisis()
		else (peso += (comida.cuantoPesa() * 0.1))
		
	}
	
	method crisis(){
		peso = 10
	}
	
	method correr(){
		peso -= 1
	}

}

object caperucita{
	var manzanasEnCanasta = 6
	
	method cuantoPesa() = 60 + (manzanasEnCanasta * 0.2)
	
	method perdioManzanas(cant){
		manzanasEnCanasta -= cant
	}
}

object abuelita{
	method cuantoPesa() = 50
}

object cazador{
	method cuantoPesa() = 80
}