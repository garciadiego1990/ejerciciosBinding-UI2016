package ar.edu.sistema
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Calculo {
	Integer operando1
	Integer operando2
	Integer resultado
	
	
	def void operar(){
		resultado = operando1 * operando2
	}
}