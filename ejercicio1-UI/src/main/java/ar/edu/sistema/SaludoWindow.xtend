package ar.edu.sistema


import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.MainWindow
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*


class SaludoWindow extends MainWindow<Saludo> {

	new() {
		super(new Saludo)
		title = "Saludo!!"
	}
	
	override createContents(Panel mainPanel) {
		
		new Label(mainPanel).text = "Nombre"
		

		
		new TextBox(mainPanel) => [
			value <=> "nombre"
		]
		
		new Label(mainPanel).text = "Apellido"
		
		new TextBox(mainPanel) => [
			value <=> "apellido"
		]
		
		new Label(mainPanel) => [
			width = 150
			
			value <=> "saludo"
		]
		}


	def static main(String[] args) {
		new SaludoWindow().startApplication
	}
}
