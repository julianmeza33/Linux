
puts"ingresar cantidad de personas"
ca = gets.chomp.to_i

ap = 0
ma = 0
mx = 0
pan = 0
apn = 0

  for x in 1..ca
    puts"cuanto dinero aportara"
     t = gets.chomp.to_i

     ap = ap + t

        if t >= 5000 
          ma = ma + 1
          apn = apn + t
         else 
          mx = mx + 1
          pan = pan + t
        end
    end
  
puts"el total de dinero recaudado es: $#{ap}"
puts"el promedio por personas es: $#{ap/ca}"

puts"el total que recaudaron las personas que aportaron más de $5000 es: $#{apn}"
puts"la cantidad de personas que pusieron mas de $5000 son: #{ma}"
puts"el promedio de las personas que pusieron más de $5000 es: $#{ma / apn}" 

puts"el total que recaudaron las personas que aportaron más de $5000 es: $#{pan}"
puts"la cantidad de personas que pusieron menos de $5000 son: #{mx}"
puts"el promedio de las personas que pusieron menos de $5000 es: $#{pan / mx}"