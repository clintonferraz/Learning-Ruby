5.times { puts "Exec the block" } #blocks com chaves são de apenas 1 linha
puts "\n"

sum = 0
numbers = [6, 14, 22]
numbers.each {|num| sum += num}
puts sum
puts "\n"

hash = {4 => 5, 2 => 3, 1 => 7}

hash.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts '---'
end
puts "\n"

def foo
    yield
    yield
    yield
end

foo { puts "teste 01" }  #a passagem do block é obrigatoria
foo { puts "teste 02"}

foo do                          #pode ser passado um bloco com mais de uma linha
    puts "teste 03 linha 1"
    puts "teste 03 linha 2"
end
puts "\n"


def foo                 #uma forma de passar block opcionalmente
    if block_given?
        yield
    else
        puts "Bloco não informado"
    end
end

foo
foo { puts "Bloco informado" }




def foo(name, &block)        #passando um parametro e um block para uma função
    @name = name
    block.call
end

foo('João'){ puts "Hello #{@name}"}