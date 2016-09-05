package ar.edu.sistema

import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.NumericField
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.Button

class CalculoWindow extends MainWindow<Calculo> {

	new() {
		super(new Calculo)
		title = "Calculadora!!"
	}

	override createContents(Panel mainPanel) {

		new Label(mainPanel).text = "Operando1"

		new NumericField(mainPanel).value <=> "operando1"

		new Label(mainPanel).text = "Operando2"

		new NumericField(mainPanel).value <=> "operando2"

		new Button(mainPanel) => [
			caption = "+"
			onClick [|modelObject.operar]
		]

		new Label(mainPanel) => [
			width = 150

			value <=> "resultado"
		]

	}

	def static main(String[] args) {
		new CalculoWindow().startApplication
	}
}
