file = File.open('./file.txt')

k = 0
file.each do |line|
    k += 1
    puts "Linha #{k}: #{line}"
end