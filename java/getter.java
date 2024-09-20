

public class getter {
    // Atributo privado
    private String nombre;
    
    // Constructor
    public getter(String nombre) {
        this.nombre = nombre;
    }
    
    // Getter para el atributo 'nombre'
    public String getNombre() {
        return nombre;
    }
    public static void main(String[] args) {
        // Crear una instancia de Persona
        getter persona = new getter("Juan");

        // Usar el getter para obtener el valor del atributo 'nombre'
        System.out.println("Nombre: " + persona.getNombre());
        
    }
}