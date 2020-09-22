class Father                                       
    attr_accessor :name, :age, :weight, :height        #cria os atributos name, age, weight e height
    def print_name                                     #cria o metodo print_name
        puts "O nome é #{@name}"
    end
end

class Son < Father                                     #cria uma classe que herda os atributos e métodos da classe Father
    def print_age                                      #alem dos metodos herdados, a classe Son agora também possui um metodo extra print_age
        puts "A idade é #{@age} anos"                       #para sobrescrever um método herdado, basta defini-lo novamente (usando o mesmo nome)
    end
end

obj_pai = Father.new                                   #cria uma objeto da classe Father
obj_pai.name = "João"


obj_filho = Son.new                                    
obj_filho.name = "Marcos"
obj_filho.age = 14 

obj_pai.print_name
obj_filho.print_name
obj_filho.print_age

