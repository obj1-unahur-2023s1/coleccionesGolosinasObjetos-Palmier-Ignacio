
object bombon {
	var peso = 15
	method peso() = peso
	method precio() = 5
	method esLibreDeGluten() = true
	method gusto() = "frutilla"
	method mordisco() {
		peso = 0.max((peso * 0.8) - 1)
	}
}

object alfajor {
	var peso = 300
	method peso() = peso
	method precio() = 12
	method esLibreDeGluten() = false
	method gusto() = "chocolate"
	method mordisco() {
		peso = (peso * 0.8)
	}
}

object caramelo {
	var peso = 5
	method peso() = peso
	method precio() = 1
	method esLibreDeGluten() = true
	method gusto() = "frutilla"
	method mordisco() {
		peso = 0.max(peso-1)
	}
}

object chupetin {
	var peso = 7
	method peso() = peso
	method precio() = 2
	method esLibreDeGluten() = true
	method gusto() = "naranja"
	method mordisco() {
		peso = 2.max(peso * 0.9)
	}
}

object oblea {
	var peso = 250
	method peso() = peso
	method precio() = 5
	method esLibreDeGluten() = false
	method gusto() = "vainilla"
	method mordisco() {
		if(peso>70){
			peso = (peso * 0.5)
		}else{
			peso = (peso * 0.75)
		}
	}
}

object chocolatin {
	var peso
	var precio
	method setPeso (unPeso){
		peso = unPeso
		precio = 0.5 * unPeso
	}
	method peso() = peso
	method precio() = precio
	method esLibreDeGluten() = false
	method gusto() = "chocolate"
	method mordisco() {
		peso = 0.max(peso-2)
	}
}

object golosinaBanada{
	var golosina
	var peso
	var precio
	var pesoBanado = 4
	method setGolosinaBase(golosinaBase){
		golosina = golosinaBase
		peso = golosinaBase.peso() + pesoBanado
		precio = golosinaBase.precio() + 2
	}
	method peso() = peso
	method precio() = precio
	method esLibreDeGluten() = golosina.esLibreDeGluten()
	method gusto() = golosina.gusto()
	method mordisco() {
		pesoBanado = 0.max(pesoBanado - 2)
		golosina.mordisco()
		peso = golosina.peso() + pesoBanado
	}
}

object pastillaTTF {
	const peso = 5
	const gustos = ["frutilla","chocolate","naranja"]
	var mordiscos = 0
	var property esLibreDeGluten = false
	method precio() = if(esLibreDeGluten) 7 else 10
	method gusto() = gustos.get(mordiscos%gustos.size())
	method mordisco() { //puto el que lee
		mordiscos++
	}
	method peso() = peso
}
