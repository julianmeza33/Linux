// Definición de la clase abstracta
abstract class Animal {
  // Método abstracto (sin implementación)
  void hacerSonido();

  // Método no abstracto (con implementación)
  void dormir() {
    print("El animal está durmiendo.");
  }
}

// Implementación de una clase concreta que extiende la clase abstracta
class Perro extends Animal {
  // Implementación del método abstracto
  @override
  void hacerSonido() {
    print("El perro dice: ¡Guau!");
  }
}

// Implementación de otra clase concreta que extiende la clase abstracta
class Gato extends Animal {
  // Implementación del método abstracto
  @override
  void hacerSonido() {
    print("El gato dice: ¡Miau!");
  }
}

void main() {
  // Crear instancias de las clases concretas
  Animal miPerro = Perro();
  Animal miGato = Gato();

  // Usar los métodos de las clases concretas
  miPerro.hacerSonido(); 
  miPerro.dormir();      

  miGato.hacerSonido(); 
  miGato.dormir();     
}
