public class setter {
    // Atributo privado
    private String modelo;

    // Constructor
    public setter(String modelo) {
        this.modelo = modelo;
    }

    // Getter para el atributo 'modelo'
    public String getModelo() {
        return modelo;
    }

    // Setter para el atributo 'modelo'
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public static void main(String[] args) {
        // Crear una instancia de Coche
        setter miCoche = new setter("Toyota Corolla");

        // Usar el getter para obtener el valor del atributo 'modelo'
        System.out.println("Modelo inicial: " + miCoche.getModelo());

        // Usar el setter para cambiar el valor del atributo 'modelo'
        miCoche.setModelo("Honda Civic");
        System.out.println("Modelo actualizado: " + miCoche.getModelo());
    }
}
