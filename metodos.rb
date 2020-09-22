def talk(name, age)
    puts "#{name} tem #{age} anos de idade."
end

talk('Carlos', 32)

def shirt(color = 'vermelha', size = "M") #define um valor padrão para quando nenhum parâmetro é passado
    puts "A camisa é #{color} e de tamanho #{size}"
end

shirt
shirt('amarela','P')
shirt

def sum(num1,num2)
    num1 + num2 #se o método conter apenas uma expressão, ela será o retorno da função
end

puts "A soma é #{sum(2,7)}"

def mult1(num1, num2)
    num3 = num1 * num2
    num4 = num3 * num2 #Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it
end

puts "A multiplicação é #{mult1(2,7)}"


def mult2(num1, num2)
    return num3 = num1 * num2
    num4 = num3 * num2 
end

puts "A multiplicação é #{mult2(2,7)}"