class Foo
    def bar
        puts self
    end
end


foo = Foo.new
puts foo
foo.bar

#------------------------------------------------------------------------------

class Foo
    def self.bar         #quando se utiliza 'self' na declaração do método...
        puts self
    end
end

Foo.bar                 #...o método pode ser chamado sem a criação de uma instância, e nesse caso o self se torna a propria classe, em vez de a instância


#------------------------------------------------------------------------------

class Pen
    attr_accessor :color
    def pen_color
        puts "The color is " + self.color  #também funciona sem o 'self', mas exemplifica que nesse caso, o self é a própria instância, ou seja, "o que vem antes do ponto"
    end
end

pen1 = Pen.new
pen2 = Pen.new
pen1.color = "blue"
pen2.color = "yellow"
pen1.pen_color
pen2.pen_color

#-------------------------------------------------------------------------------

