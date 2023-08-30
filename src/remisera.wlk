import clientes.*

object roxana {
	
	method cobrarPorKm(cliente,km){
		return cliente.precioDelKm()*km
	}
	
}

object gabriela {
	
	method cobrarPorKm(cliente,km){
		return (cliente.precioDelKm()*km) *1.2
	}
}

object mariela {
	method cobrarPorKm(cliente,km){
		return 50.max(cliente.precioDelKm()*km)
  }

}

object juana {
	method cobrarPorKm(_,km){
		return if (km <= 8){
			100
		}
		else{
			200
		}
  }
	
}

object lucia {
	
	var estaReemplazando
	
	method estaReemplazando() = estaReemplazando
	
	method estaReemplazando(remisera){
		if (self == remisera)
		   self.error("no se puede reemplazar a si mismo")
		estaReemplazando = remisera
	}
	
	method cobrarPorKm(cliente,km){
		return estaReemplazando.cobrarPorKm(cliente,km)
	}

	
}