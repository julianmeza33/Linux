import 'dart:io';

void main() { 
  print("número de estudiantes"); 
  int n = int.parse(stdin.readLineSync()!); 

  for(n = 1;  n <= n; n++) {
    print("nombre del estudiantes"); 
    String? nb = stdin.readLineSync();

    print("ingrese las notas entre 1 y 10");

    print("nota 1"); 
    int n1 = int.parse(stdin.readLineSync()!); 

    print("nota 2"); 
    int n2 = int.parse(stdin.readLineSync()!);

    print("nota 3"); 
    int n3 = int.parse(stdin.readLineSync()!); 

    int sum = (n1 + n2 + n3); 

    double prom = (sum / 3); 

      if ( prom > 6){
      print("el estudiante aprobo");
      } else { 
      print("El estudiante reprobo"); 

  }
 }
}