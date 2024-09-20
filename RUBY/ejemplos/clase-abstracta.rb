# Definición de la clase abstracta
class Animal
  # Método abstracto (debe ser implementado por las subclases)
  def hacer_sonido
    raise NotImplementedError, 'Subclase debe implementar el método hacer_sonido'
  end

  # Método no abstracto (con implementación)
  def dormir
    puts 'El animal está durmiendo.'
  end
end

# Implementación de una clase concreta que hereda de la clase abstracta
class Perro < Animal
  # Implementación del método abstracto
  def hacer_sonido
    puts 'El perro dice: ¡Guau!'
  end
end

# Implementación de otra clase concreta que hereda de la clase abstracta
class Gato < Animal
  # Implementación del método abstracto
  def hacer_sonido
    puts 'El gato dice: ¡Miau!'
  end
end

# Crear instancias de las clases concretas
mi_perro = Perro.new
mi_gato = Gato.new

# Usar
