import 'dart:io';

void main() {
  print("Ingrese nombre:");
  String? n = stdin.readLineSync();
  print("Ingrese apellido:");
  String? ap = stdin.readLineSync();
  print("Numero 1:");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Numero 2:");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Numero 3:");
  int n3 = int.parse(stdin.readLineSync()!);

  int sum = n1 + n2 + n3;
  double prom = sum / 3;

  print('tu nombre completo es ${n} ${ap}');
  print('el promedio es: ${prom}');

}