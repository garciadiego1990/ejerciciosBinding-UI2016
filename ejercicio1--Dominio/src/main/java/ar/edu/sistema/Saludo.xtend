package ar.edu.sistema
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Saludo {
	String nombre = new String
	String apellido = new String
	String saludo
	
	def void setApellido(String unApellido) {
		apellido=unApellido
		saludo=saludar()
	}
	
	def void setNombre(String unNombre) {
		nombre=unNombre
		saludo=saludar()
	}
	
 	def String saludar(){
		saludo="Hola " + nombre + " " + apellido
	}
	
	
}