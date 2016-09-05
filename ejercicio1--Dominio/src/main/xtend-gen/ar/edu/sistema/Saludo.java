package ar.edu.sistema;

@SuppressWarnings("all")
public class Saludo {
  private String nombre;
  
  private String apellido;
  
  private String saludo;
  
  public String saludar(final String unNombre, final String unApellido) {
    String _concat = "Hola".concat(unNombre);
    String _concat_1 = _concat.concat(unApellido);
    return this.saludo = _concat_1;
  }
}
