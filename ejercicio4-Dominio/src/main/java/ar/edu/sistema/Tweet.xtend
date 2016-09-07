package ar.edu.sistema

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Tweet {
	String frase
	String caracteresDisponibles = "140"

	def void twittear() {
		caracteresDisponibles = (140 - frase.length).toString();
	}
/* 
	def boolean puedeEscribir() {
		Integer.parseInt(caracteresDisponibles) > 0
	}
*/
	def void setFrase(String unaFrase) {
		frase = unaFrase
		twittear
	
	}
}
