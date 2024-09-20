import 'dart:io'; 
  
class Aprendiz { 
  List<int> recaudacion = []; 
  
  void agregarDinero() { 
    print('Ingrese cuanto va a recaudar: '); 
    int? dineroDelRecaudo = int.parse(stdin.readLineSync()!); 
  
    while (this.obtenerTotal() < dineroDelRecaudo) { 
      print('Ingrese cuanto a aportar: '); 
      int? aporte = int.parse(stdin.readLineSync()!); 
  
      recaudacion.add(aporte); 
      } 
    } 
  
    int obtenerTotal() { 
    int suma = 0; 
  
    for (var dinero in recaudacion) { 
      suma = suma + dinero; 
      }  
      return suma; 
  } 
} 
  
void main() { 
  Aprendiz aprendiz = Aprendiz(); 
  aprendiz.agregarDinero(); 
  print('El total recaudo es de: ${aprendiz.obtenerTotal()}'); 
}