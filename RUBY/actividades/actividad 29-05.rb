puts"digite el numero" 
num = gets.chomp.to_i

if num > 0 
    puts"el valor es postivo"
else
    if num < 0 
        puts "el valor es negativo "
    else
        puts "el valor es cero"
    end        
end           