import remisera.*
import clientes.*

object oficina {
	

	 var primeraRemisera
	 var segundaRemisera
	 
	 method primeraRemisera() = primeraRemisera
	 
	 method segundaRemisera() = segundaRemisera
	 
	 method asignarRemiseras(remisera1, remisera2){
	 	primeraRemisera = remisera1
	 	segundaRemisera = remisera2
	 }
	
	 method cambiarPrimerRemiseraPor(remisera){
	 	if (primeraRemisera == remisera) {
           primeraRemisera.error("Ya esta asignada la remisera")
	 	}
	 	primeraRemisera = remisera	 
	 }
	 
	 method cambiarSegundaRemiseraPor(remisera){
	 	if (segundaRemisera == remisera) {
           segundaRemisera.error("Ya esta asignada la remisera")
	 	}
	 	segundaRemisera = remisera	
	 }
	 
	 method intercambiarRemiseras(){
	 	self.asignarRemiseras(segundaRemisera,primeraRemisera)
	 }
	 
	 method remiseraElegidaParaViaje(cliente, kms){
	 	return if (0.max(primeraRemisera.cobrarPorKm(cliente,kms) - segundaRemisera.cobrarPorKm(cliente,kms)) >30)
	 	{segundaRemisera} else {primeraRemisera}
	 }
}
