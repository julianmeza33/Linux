class Coche {
  
  String _modelo;


  Coche(this._modelo);



  set modelo(String nuevoModelo) {
    _modelo = nuevoModelo;
  }
}

void main() {

  Coche miCoche = Coche('Toyota Corolla');


  miCoche.modelo = 'Honda Civic';
  print('Modelo actualizado: ${miCoche._modelo}');
}