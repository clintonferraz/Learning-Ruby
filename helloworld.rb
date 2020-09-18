print "\nHello World!" + "\n"*2
print "Digite"
print " 2 números (inteiros): "
num = gets.chomp.to_i 
num2 = gets.chomp.to_i 
puts "A soma entre eles: #{num + num2} \nA subtração entre eles: #{num - num2}"
puts "A multiplicação entre eles: #{num * num2} \nA divisão (inteira) entre eles: #{num / num2}"
puts "O resto da divisão entre eles: #{num % num2}"