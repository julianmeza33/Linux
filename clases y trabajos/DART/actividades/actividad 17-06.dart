import 'dart:io';

void main(){
  print("cantidad de alumnos");
  int cantidad = int.parse(stdin.readLineSync()!);
  for  (int i = 0; i < cantidad; i++) {
    print("ingresa tu nombre");
    String? n  = stdin.readLineSync()!;  
    (n.length >=2);
    print('los 2  ultimos caracteres de tu nombre son: "${n.substring(n.length - 2)}"');
  }
}