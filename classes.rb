class Father                                       
    attr_accessor :name, :age, :weight, :height        #cria os atributos name, age, weight e height
    def print_name                                     #cria o metodo print_name
        puts "O nome é #{@name}"
    end
end

class Son < Father                                     #cria uma classe que herda os atributos e métodos da classe Father
    def print_age                                      #alem dos metodos herdados, a classe Son agora também possui um metodo extra print_age
        puts "A idade é #{@age} anos"                  #para sobrescrever um método herdado, basta defini-lo novamente (usando o mesmo nome)
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

class Person
    attr_accessor :name, :age
    def initialize(name, age)                          #Construtor(deve se chamar "initialize"): inicializa o objeto com os atributos predefinidos
        @name = name
        @age = age
    end
    def check_attributes
        puts "Nome: #{@name}"
        puts "Idade: #{@age}"
    end
end

pers1 = Person.new('Caio', 23)                         #passando atributos pro construtor
pers1.check_attributes
pers1.name = "Cezar"
pers1.check_attributes

class PersonConstAge < Person
    def initialize(name)                               #Sobrescrevendo o construtor herdado da classe Person, para que a idade seja constante
        @name = name
        @age = 19                                      
    end
end

pers2 = PersonConstAge.new('Paulo')
pers2.check_attributes

pers3 = PersonConstAge.new('Roberto')
pers3.check_attributes