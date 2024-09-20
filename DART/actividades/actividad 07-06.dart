import "dart:io";

void main(){
  print("ingresar cantidad de personas");
  int ca = int.parse(stdin.readLineSync()!);

  int ap = 0;
  int ma = 0;
  int mx = 0;
  int pan = 0;
  int apn = 0;

  for (var x = 1; x <= ca; x++) {
    print("cuanto dinero aportara");
    int t = int.parse(stdin.readLineSync()!);

    ap = ap + t;

    if (t >= 5000) {
      ma = ma + 1;
      apn = apn + t;
    }else{
      mx = mx + 1;
      pan = pan + t;
    }
  }
  
  print("el total de dinero recaudado es: \$$ap");
  print("el promedio por personas es: ${(ap ~/ ca)}");

  print("el total que recaudaron las personas que aportaron más de \$5000 es: \$$apn");
  print("la cantidad de personas que pusieron mas de \$5000 son: $ma");
  print("el promedio de las personas que pusieron más de \$5000 es: \$${(ma ~/ apn)}"); 

  print("el total que recaudaron las personas que aportaron más de \$5000 es: \$$pan");
  print("la cantidad de personas que pusieron menos de \$5000 son: $mx");
  print("el promedio de las personas que pusieron menos de \$5000 es: \$${(pan ~/ mx)}");

}