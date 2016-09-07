package ar.edu.sistema

import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.MainWindow
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class TweetWindow extends MainWindow<Tweet> {

	new() {
		super(new Tweet)
		title = "Twitter2"
	}

	override createContents(Panel mainPanel) {

		new Label(mainPanel).text = "Tweet"

		new TextBox(mainPanel) => [
			value <=> "frase"
		]

		new Label(mainPanel) => [
			width = 150

			value <=> "caracteresDisponibles"
		]
	}

	def static main(String[] args) {
		new TweetWindow().startApplication
	}

}
