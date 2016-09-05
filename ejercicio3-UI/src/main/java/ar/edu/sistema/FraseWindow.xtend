package ar.edu.sistema

import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.MainWindow
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class FraseWindow extends MainWindow<Frase> {

	new() {
		super(new Frase)
		title = "Frase"
	}

	override createContents(Panel mainPanel) {

		new Label(mainPanel).text = "Frase"

		new TextBox(mainPanel) => [
			value <=> "frase"
		]

		new Label(mainPanel) => [
			width = 150

			value <=> "reverse"
		]
	}

	def static main(String[] args) {
		new FraseWindow().startApplication
	}

}
