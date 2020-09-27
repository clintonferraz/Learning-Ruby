class Foo
    def call_private
        bar
    end
 
    private
 
    def bar
        puts "private method"
    end
end
 
foo = Foo.new
 
foo.call_private        #a expressão "foo.bar" não funcionaria, pois estaria chamando um método privado a classe Foo
                        