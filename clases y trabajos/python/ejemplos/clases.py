#Definir clase ⬤
#Para definir una clase en Python, se utiliza la palabra clave class, 
# seguida del nombre de la clase y dos puntos. Dentro de la clase, 
# puedes definir atributos (variables) y métodos (funciones).

class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre  # Atributo
        self.edad = edad      # Atributo

    def saludar(self):       # Método
        print(f"Hola, mi nombre es {self.nombre} y tengo {self.edad} años.")


#Crear objecto ⬤
#Una vez que haya definido una clase, puede crear instancias (objetos) de esa clase.


# Crear un objeto de la clase Persona
persona1 = Persona("Alice", 30)
persona2 = Persona("Bob", 25)

# Llamar al método saludar
persona1.saludar()  # Salida: Hola, mi nombre es Alice y tengo 30 años.
persona2.saludar()  # Salida: Hola, mi nombre es Bob y tengo 25 años.


#atributos
#Lo atributos son variables que pertenecen a la clase, 
# y los métodos son funciones que pertenecen a la clase. 
# Puedes acceder a los atributos y métodos utilizando la notación de punto ( .).

# Acceder a atributos
print(persona1.nombre)  # Salida: Alice
print(persona1.edad)    # Salida: 30

# Modificar atributos
persona1.edad = 31
print(persona1.edad)    # Salida: 31


#Herencia
#La herencia permite crear una nueva clase que hereda atributos y 
# métodos de una clase existente. Esto es útil para crear jerarquías de clases.

class Estudiante(Persona):  # Estudiante hereda de Persona
    def __init__(self, nombre, edad, carrera):
        super().__init__(nombre, edad)  # Llama al constructor de la clase base
        self.carrera = carrera            # Atributo adicional

    def estudiar(self):
        print(f"{self.nombre} está estudiando {self.carrera}.")

# Crear un objeto de la clase Estudiante
estudiante1 = Estudiante("Carlos", 20, "Ingeniería")
estudiante1.saludar()  # Salida: Hola, mi nombre es Carlos y tengo 20 años.
estudiante1.estudiar() # Salida: Carlos está estudiando Ingeniería.


#Encapusulamiento
#El encapsulamiento es el concepto de ocultar los detalles internos de una clase
#  y exponer solo lo necesario. En Python, puedes usar un guion bajo ( _) para indicar
#  que un atributo es "protegido" y no debería ser accedido directamente desde fuera de la clase.


class CuentaBancaria:
    def __init__(self, saldo_inicial):
        self._saldo = saldo_inicial  # Atributo protegido

    def depositar(self, cantidad):
        self._saldo += cantidad

    def retirar(self, cantidad):
        if cantidad <= self._saldo:
            self._saldo -= cantidad
        else:
            print("Fondos insuficientes.")

    def obtener_saldo(self):
        return self._saldo

# Crear un objeto de la clase CuentaBancaria
cuenta = CuentaBancaria(1000)
cuenta.depositar(500)
print(cuenta.obtener_saldo())  # Salida: 1500
cuenta.retirar(200)
print(cuenta.obtener_saldo())  # Salida: 1300