
 puts "número de estudiantes"
 n=gets.chomp.to_1

    for x in 1..n
        
        puts "Nombre del estudiante"
        nb=gets.chomp

        puts"ingresé notas del 1 al 10"

        puts" nota 1"
        n1= gets.chomp.to_i

        puts" nota 2"
        n2= gets.chomp.to_i

        puts" nota 3"
        n3= gets.chomp.to_i

        Sum = n1 + n2 + n3

        Prom = sum / 3

        if prom > 6
         puts "el estudiante aprobó"
         else
         puts "el estudiante no aprobó"
        end

    end