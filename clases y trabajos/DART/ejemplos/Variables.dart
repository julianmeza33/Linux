// VARIABLES //

var texto = 'texto';

// VARIABLES NUMERICAS
int numeroA = 20;
int numeroB = 10;
int resultado = numeroA + numeroB;
int edad = 17;
double numeroC = 15/4; // dara un numero tipo decimal ( osea 3.14... )

// VARIABLES DE TEXTO 
String mensaje1 = "hola";
String nombre = "Julian";

// VARIABLES BOOLEANAS

bool true1 = 1==1;
bool false1 = 1==2;
bool false2 = 1!=1;

void main(){

  // Ejemplo Numeros
  print(resultado);

  // Ejemplo de Texto
  print(mensaje1);

  // Ejemplos booleanas
  print("$true1 $false1 $false2");

  // Interpolar cadenas
  print ("$numeroA $numeroB");

  // Concatenar Variables con el operador "+"

  print("hola " + "mi nombre es: " + nombre + " Y tengo: " + edad.toString() + " años");

}