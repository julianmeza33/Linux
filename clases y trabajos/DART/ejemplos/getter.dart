class Coche {
  // Atributo privado
  final String _modelo;

  // Constructor
  Coche(this._modelo);

  // Getter para el atributo 'modelo'
  String get modelo => _modelo;
}

void main() {
  // Crear una instancia de Coche
  var miCoche = Coche('Toyota Corolla');

  // Usar el getter para obtener el valor del atributo 'modelo'
  print('Modelo del coche: ${miCoche.modelo}');
}