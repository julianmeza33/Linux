class Perro {
  String? nombre;
  String? raza;
  String? sexo; 

  Perro(String raza, String sexo) {
    this.raza = raza;
    this.sexo = sexo;
  }
}

void main(){
    Perro perro = new Perro("m","pitbull");
    perro.nombre = "king";
    print(perro.nombre);
    print(perro.raza);
    print(perro.sexo);
}