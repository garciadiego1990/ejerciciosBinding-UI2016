package ar.edu.sistema
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Frase {
	String frase
	String reverse = null

	def void invertirFrase() {
		reverse = new StringBuffer(frase).reverse().toString();
	}
	
	def void setFrase(String unaFrase){
		frase = unaFrase
		invertirFrase()
	}
}
