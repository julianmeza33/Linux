import 'dart:io';

void main(){
  print('Escriba el valor de  su declaración de renta');
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 10){
    double DRentax = (n * 20/100);
    double DRenta = n - DRentax;
    print('se aplico el descuento y el valor final es : $DRenta\$');
  }else if (n <= 10){
    double DRentax = (n * 10/100);
    double DRenta = n - DRentax;
    print('se aplico el descuento y el valor final es : $DRenta\$');
  }else if (n <= 10){
    double DRentax = (n * 5/100);
    double DRenta = n - DRentax;
    print('se aplico el descuento y el valor final es : $DRenta\$');
  }else {
    double DRentax = (n * 1/100);
    double DRenta = n - DRentax;
    print('se aplico el descuento y el valor final es : $DRenta\$');
  }
}