package ar.edu.sistema

import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.NumericField
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class ConversorWindow extends MainWindow<Conversor> {
	new() {
		super(new Conversor)
		title = "Conversor"
	}

	override createContents(Panel mainPanel) {

		new Label(mainPanel).text = "Celsius"

		new NumericField(mainPanel).value <=> "celsius"

		new Label(mainPanel).text = "Fahrenheit"

		new NumericField(mainPanel).value <=> "fahrenheit"
		
	}

	def static main(String[] args) {
		new ConversorWindow().startApplication
	}
}
