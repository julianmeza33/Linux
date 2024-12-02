void main(){
  int a = 1;
  if ( a == 1){
  Logistica l = Logcarro();
  Transporte t = l.crearTransporte();
  t.deliveri();
  }else if (a == 2) {
  Logistica l = Logbarco();
  Transporte t = l.crearTransporte();
  t.deliveri();
  }
}

abstract class Logistica{
  Transporte crearTransporte();
}

class Logcarro extends Logistica{
  @override
  Transporte crearTransporte() {
    return Carro();
  }
}
class Logbarco extends Logistica{
  @override
  Transporte crearTransporte() {
    return Barco();
  }
}

abstract class Transporte{
  void deliveri();
}
class Carro extends Transporte{
  void deliveri(){
    print('entrega por tierra');
  }
}
class Barco extends Transporte{
  void deliveri(){
    print('entrega por mar');
  }
}
