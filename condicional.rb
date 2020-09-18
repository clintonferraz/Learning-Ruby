print "Digite um número inteiro:"

num = gets.chomp.to_i

if num > 50 
    puts "Maior que 50"
else
    puts "Menor ou igual a 50"
end

unless num > 10 && num < 20 
    puts "Não está entre 10 e 20"
end

=begin

    Operadores lógicos

    && - Resulta verdadeiro quando os dois operandos forem verdadeiros, resulta falso caso contrário
    || - Resulta verdadeiro quando pelo menos um dos dois operandos for verdadeiro, resulta falso caso contrário
    ^  - (Ou exclusivo) Resulta verdadeiro quando apenas um operando for verdadeiro. Quando os dois forem verdadeiros, retorna falso
    !  - Inverte o valor lógico do operando
        
=end
