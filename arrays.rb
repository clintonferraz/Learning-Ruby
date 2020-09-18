estados = []
puts estados
estados.push("GO") #insere no final do array
estados.push("SP")
estados.push("RS", "MT")
puts estados
print estados
estados.insert(2,"RJ") #insere antes do elemento de posição especificada
print "\n" #usar aspas duplas para \n
print estados
estados.insert(0,"AM")
print "\n"
print estados
estados.insert(2,"MS", "MG")
print "\n"
print estados
print "\n"
print estados[2]
print "\nDentro de um intervalo: \n"
print estados[2..6] #no intervalo de 2 a 6
print "\nUltimo elemento: \n"
print estados.last
print "\nQuantidade de elementos: \n"
puts estados.length
print estados.count
print "\nVazio?: \n"
print estados.empty?
print "\nInclui determinado elemento?: \n"
puts estados.include?('RJ')
puts estados.include?('MA')
print "\nDeletando elementos: \n"
estados.delete_at(3)
print estados
estados.pop #apaga o ultimo
estados.shift #apaga o primeiro
print "\n"
print estados
