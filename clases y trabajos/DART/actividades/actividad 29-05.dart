import 'dart:io';

void main() {
  print("digite el numero ");
  int num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    print("el valor es positivo");
  } else {
    if (num < 0) {
      print("el valor es negativo");
    } else {
      print("el valor es cero");
    }
  }
}
