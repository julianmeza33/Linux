class Coche {
  // Atributo privado
  String _modelo;

  // Constructor
  Coche(this._modelo);


  // Setter para el atributo 'modelo'
  set modelo(String nuevoModelo) {
    _modelo = nuevoModelo;
  }
}

void main() {
  // Crear una instancia de Coche
  var miCoche = Coche('Toyota Corolla');


  // Usar el setter para cambiar el valor del atributo 'modelo'
  miCoche.modelo = 'Honda Civic';
  print('Modelo actualizado: ${miCoche._modelo}');
}