package ar.edu.sistema

import org.uqbar.arena.bindings.DateTransformer
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.MainWindow
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class FechaWindow extends MainWindow<Fecha> {
	new() {
		super(new Fecha)
		title = "Calcular Fecha"
	}

	override createContents(Panel mainPanel) {

		val editorPanel = new Panel(mainPanel)
		editorPanel.layout = new ColumnLayout(2)

		new Label(editorPanel).text = "Fecha (dd/MM/yyyy)"

		new DateBox(editorPanel) => [
			width = 110
			(value <=> "fecha").transformer = new DateTransformer
		]

		new Label(mainPanel) => [
			width = 150

			value <=> "dias"
		]

	}

	def static main(String[] args) {
		new FechaWindow().startApplication
	}

}

class DateBox extends TextBox {
	new(Panel container) {
		super(container)
	}

	override bindValueToProperty(String propertyName) {
		val binding = super.bindValueToProperty(propertyName)
		this.withFilter(new DateTextFilter)
		binding
	}

}
