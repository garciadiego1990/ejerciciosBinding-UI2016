package ar.edu.sistema
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Conversor {
	double celsius
	double fahrenheit
	
	def void pasarACelsius(){
		celsius = (fahrenheit-32)*5/9
	}
	
	def void pasarAFahrenheit(){
		fahrenheit = (celsius*9/5)+(32)
	}
	
	def void setCelsius(double gradosCelsius){
		celsius = gradosCelsius
		pasarAFahrenheit
	}
	
	def void setFahrenheit(double gradosFahrenheit){
		fahrenheit = gradosFahrenheit
		pasarACelsius
	}
	
	
}