class Animal 
    attr_accessor :espesie, :color, :peso
end

class Carro 
    attr_accessor :modelo, :color, :peso
end

class Barco 
    attr_accessor :tamaño, :color, :peso
end



  animal = Animal.new
  animal.espesie = "perro"
  animal.color = "negro"
  animal.peso = 20

  carro = Carro.new
  carro.modelo = "nissan gtr"
  carro.color = "negro"
  carro.peso = 50

  barco = Barco.new
  barco.tamaño = 40
  barco.color = "gris"
  barco.peso = 150