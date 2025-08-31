puts "Escriba el valor de  su declaración de renta"
dr = gets.chomp.to_f

if  dr <= 10
     DRentax = (dr * (20/100))
     DRenta = dr - Drentax
    puts("se aplico el descuento y el valor final es :#{DRenta}$")
elsif dr <= 100
    DRentax = (dr * (10/100))
    DRenta = dr - Drentax
   puts("se aplico el descuento y el valor final es :#{DRenta}$")
elsif dr <= 1000
    DRentax = (dr * (5/100))
    DRenta = dr - Drentax
   puts("se aplico el descuento y el valor final es :#{DRenta}$")
else 
     DRentax = (dr * (1/100))
     DRenta = dr - Drentax
    puts("se aplico el descuento y el valor final es :#{DRenta}$")
end