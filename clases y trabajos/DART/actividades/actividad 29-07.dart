class Animal {
  String? espesie;
  String? color;
  int? peso;
}
class Carro {
  String? modelo;
  String? color;
  int? peso;
}
class Barco {
  int? tamano;
  String? color;
  int? peso;
}

void main(){
  Animal animal = new Animal();
  animal.espesie = "perro";
  animal.color = "negro";
  animal.peso = 20;

  Carro carro = new Carro();
  carro.modelo = "nissan gtr";
  carro.color = "negro";
  carro.peso = 50;

  Barco barco = new Barco();
  barco.tamano = 40;
  barco.color = "gris";
  barco.peso = 150;
}