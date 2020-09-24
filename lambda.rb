first_lambda = lambda { puts "my first lambda" }
first_lambda.call

second_lambda = -> { puts "my second lambda" } #outra sintaxe, tb funciona
second_lambda.call

#-------------------------------------------------------------------------

third_lambda = -> (names){ names.each{ |name| puts "O nome é #{name}" } } #passando parâmetros

names = ["Carlos", "João", "Daniel"]

third_lambda.call(names)

#------------------------------------------------------------------------

def foo(lambda1)
    lambda1.call
end

lambda1 = -> { puts "lambda1 passado como parametro" }
foo(lambda1)