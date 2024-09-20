// Definición de la clase abstracta
abstract class Animal {
    // Método abstracto (sin implementación)
    abstract void hacerSonido();

    // Método no abstracto (con implementación)
    void dormir() {
        System.out.println("El animal está durmiendo.");
    }
}

// Implementación de una clase concreta que extiende la clase abstracta
class Perro extends Animal {
    // Implementación del método abstracto
    @Override
    void hacerSonido() {
        System.out.println("El perro dice: ¡Guau!");
    }
}

// Implementación de otra clase concreta que extiende la clase abstracta
class Gato extends Animal {
    // Implementación del método abstracto
    @Override
    void hacerSonido() {
        System.out.println("El gato dice: ¡Miau!");
    }
}

class Main {
    public static void main(String[] args) {
        // Crear instancias de las clases concretas
        Animal miPerro = new Perro();
        Animal miGato = new Gato();

        // Usar los métodos de las clases concretas
        miPerro.hacerSonido(); // Salida: El perro dice: ¡Guau!
        miPerro.dormir();      // Salida: El animal está durmiendo.

        miGato.hacerSonido(); // Salida: El gato dice: ¡Miau!
        miGato.dormir();      // Salida: El animal está durmiendo.
    }
}
