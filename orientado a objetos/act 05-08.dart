class Transporte{
   String? marca;
}
class Terrestre extends Transporte{
   int? llantas;
}
class Auto extends Terrestre{
   bool? aire;
}
class Motos extends Terrestre{
   int? cascos;
}
class Aereo extends Transporte{
   int? motores;
}
 class Avion extends Aereo{
    static void manual(){
      print("me deben plata");
    }
 }

 void main(){
  Auto a = new Auto();
  a.llantas = 4;
  a.marca = "toyota";
  a.aire = true;

  Motos m = new Motos();
  m.llantas = 2;
  m.marca = "yamaha";
  m.cascos = 2;


  Avion v = new Avion();
  Avion.manual();
  v.marca = "boing 747";
  v.motores= 4;


 }
