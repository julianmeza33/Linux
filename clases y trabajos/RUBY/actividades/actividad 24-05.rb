puts"Ingrese nombre:"
n = gets.chomp
puts"Ingrese apellido:"
ap = gets.chomp
puts"Numero 1:"
n1 = gets.chomp.to_i
puts"Numero 2:"
n2 = gets.chomp.to_i
puts"Numero 3:"
n3 = gets.chomp
sum = n1 + n2 + n3.to_i
prom = sum / 3

puts("Tu nombre completo es #{n} #{ap}")
puts("El promedio es: #{prom}")
