object ludmila {
	
	method precioDelKm() = 18
	
	
}

object anaMaria {
	var estaEconomEstable = true
	
	method cambiarSituacionEconom(){
		estaEconomEstable = !estaEconomEstable
	}
	
	method estaEconomEstable() = estaEconomEstable
	
	method precioDelKm() {
     return if (estaEconomEstable){
     	30
     }
     else{
     	25
     }
   }  
    
}

object teresa {
	 var precioDelKm = 22
	 
	 method precioDelKm() = precioDelKm
	 
	 method precioDelKm(unPrecio){
	 	precioDelKm = unPrecio
	 }
}

