#1. Comentarios los comentarios en Python se escriben con el símbolo 
# Esto es un comentario

print("Hola, mundo")  # Esto también es un comentario

#2. Sangría en Python, la sangría es crucial. Se utiliza para definir bloques de código. 
# Un bloque de código es un conjunto de instrucciones que pertenecen juntas, como el contenido de una función, un bucle o una condición.

if True:
    print("Esto está dentro del bloque if")
    print("Otra instrucción dentro del if")

#3. Variables y Asignación

# Variable entera
x = 10 

# Variable de texto (string)
nombre = "Juan"

# float
z = 1.75  

# bool

is_admin = True
is_admin = False

# 4.Listas y Diccionarios

frutas = ["manzana", "naranja", "plátano"]  # lista

persona = {"nombre": "Pedro", "edad": 30}  # diccionario

#5. Condicionales

x = 10
if x > 5:
    print("x es mayor que 5")
else:
    print("x es menor o igual que 5")

x = 18
if x >= 18:
    print("es mayor de edad") # si x es mayor o igual a 18
elif 13 <= x < 18:
    print("es adolescente") # si x está entre 13 y 17
else : 
    print("es menor de edad") # si x es menor que 13


#6. Bucles
# Los bucles for y while son utilizados para repetir un bloque de código varias veces.

#Bucle for : se usa para iterar sobre una secuencia (como una lista o un string)

for i in range(5):  # Repite 5 veces
    print(i)

#Bucle while : se repite mientras una condición sea verdadera.

x = 0

while x < 5:
    print(x)
    x += 1  # Incremento de x

#7. Funciones
#Las funciones en Python se definen con la palabra clave (def).

def saludar(nombre):
    print(f"Hola, {nombre}")
    saludar("Ana")  # Llamada a la función


#8. Manejo de excepciones
# Python usa try, except y finally para manejar excepciones.
try:
    x = 1 / 0  # Esto causará un error

except ZeroDivisionError:
    print("No se puede dividir por cero")

finally : # Se ejecuta siempre, independientemente de si se produjo un error o no
    print("Se ha ejecutado el bloque finally")

#9. Importación de módulos
# Puedes importar módulos con la palabra clave import

import math
print(math.sqrt(16))  # Uso de la función sqrt del módulo math

#10. Listas por Comprensión

cuadrados = [x**2 for x in range(5)]
print(cuadrados)  # [0, 1, 4, 9, 16]

#11. Cadenas de texto
#Las cadenas

texto = "Hola"
print(texto.lower())  # Convierte a minúsculas

print(texto.upper())  # Convierte a mayúsculas

#12. Clases y objetos

class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    
        self.nombre = nombre
        self.edad = edad

        self.nombre = nombre
def saludar(self):
        print(f"Hola, soy {self.nombre} y tengo {self.edad} años.")

# Crear un objeto de la clase Persona
persona1 = Persona("Ana", 25)
persona1.saludar() # Llama al método saludar

#13. Funciones Lambda

suma = lambda x, y: x + y
print(suma(3, 4))  # Salida: 7