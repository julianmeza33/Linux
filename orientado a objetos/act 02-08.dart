class Calculadora {
  double num1 = 0;
  double num2 = 0;
  String? operacion;

  Calculadora(double n1, double n2, String operacion) {
    this.num1 = n1;
    this.num2 = n2;
    this.operacion = operacion;
  }

  double sumar() {
    double suma = num1 + num2;
    return suma;
  }

  double restar() {
    double resta = num1 - num2;
    return resta;
  }

  double multiplicar() {
    double multi = num1 * num2;
    return multi;
  }

  double dividir() {
    double div = num1 / num2;
    return div;
  }

  void calcular() {
    if (operacion == "S") {
      print(sumar());
    } else if (operacion == "R") {
      print(restar());
    } else if (operacion == "M") {
      print(multiplicar());
    } else if (operacion == "D") {
      print(dividir());
    }
  }
}

void main() {
  Calculadora cal = new Calculadora(4, 2, "S");
  cal.calcular();
}