array1 = [2,4,6,8,10]

array2 = array1.map do |x|
    x**3 #eleva ao cubo
end

puts "#{array2}"
puts "#{array1}"
array1.map! do |x| #altera o próprio array original
    x**2
end
puts "#{array1}"