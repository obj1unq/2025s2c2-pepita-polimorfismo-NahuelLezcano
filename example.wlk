// Aves

object pepita {
	var energia = 100

	var cena = 0

	method cena() { 
		return cena
	}

	method reiniciarCena() { 
		cena = 0
	}
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
		cena += 1
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object pepon {
	var energia = 30

	var cena = 0

	method cena() {  
		return cena
	}

	method reiniciarCena() {  
		cena = 0
	}

	method energia() {
		return energia
	}

	method comer(comida) {
		energia = energia + (comida.energiaQueAporta()/2)
		cena += 1
	}

	method volar(distancia) {
		energia = energia - 20 - (distancia * 2)
	}
}


// Persona

object roque {
	var ave = pepita

	method tieneAlAve(_ave) {
		ave = _ave
		ave.reiniciarCena()
	}

	method alimentar(comida) {
		ave.comer(comida)
	}

	method cenas() {
		return ave.cena()
	}
}


// Alimentos

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}