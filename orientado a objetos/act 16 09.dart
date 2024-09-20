import 'dart:convert';

class Colaborador{
  String? nombreCompleto;
  int? tipoColaborador;
  double? aporte;
  
  Colaborador(String info){
    Map<String, dynamic> map = jsonDecode(info) ;
    this.nombreCompleto = map['nombreCopleto'];
    this.tipoColaborador = map['tipoColaborador'];
    this.aporte = map['aporte'];
  }
}

void main(){
String code = '{"nombreCompleto": "pepe","tipoColaborador": 1,"aporte":150.0 }';
  Colaborador colaborador = Colaborador(code);

  print(colaborador.nombreCompleto);
  print(colaborador.tipoColaborador);
  print(colaborador.aporte);
}
