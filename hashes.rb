exemplo = { nome: 'João', idade: 32, nacionalidade: 'brasileiro'}
puts exemplo
puts exemplo[:nome] #retornar um valor
exemplo[:peso] = 72.5 #adicionar chave e valor
puts exemplo
puts exemplo.keys #ver todas as chaves
puts exemplo.values #ver todos os valores
exemplo.delete(:idade) 
puts exemplo
puts exemplo.size 
puts exemplo.empty?
