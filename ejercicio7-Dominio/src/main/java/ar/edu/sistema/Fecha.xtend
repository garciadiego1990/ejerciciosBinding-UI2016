package ar.edu.sistema

import java.util.Date

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Accessors
@Observable
class Fecha {
	Date fecha
	Date fechaActual = new Date()
	double dias

	def void calcularDias() {
		if (fecha.after(fechaActual)) {
			dias = (fecha.getTime - fechaActual.getTime) / (1000 * 60 * 60 * 24)
		} else {
			dias = (fechaActual.getTime - fecha.getTime) / (1000 * 60 * 60 * 24)
		}
	}
	
	def void setFecha(Date unaFecha){
		fecha = unaFecha
		calcularDias
	}
}