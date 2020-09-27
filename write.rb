File.open('file.txt','a') do |line|  #parâmetro "a" - append, ou seja, não sobrescrever, apenas adicionar
    line.puts("\n")
    line.puts('Arroz')
    line.puts('Feijao')
end