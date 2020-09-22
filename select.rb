array1 = [1, 2, 3, 4, 5, 6]

array2 = array1.select do |x|
    x < 4
end

puts "#{array2}"

array2 = array1.select do |x|
    x >= 4
end

puts "#{array2}"

hash1 = {0 => 'zero', 1 => 'um',2 => 'dois'}

hash2 = hash1.select do |var_key, var_value|
    var_key >= 1
end
puts "#{hash2}"

hash3 = hash1.select do |var_key, var_value|
    var_value == 'zero' || var_value == 'dois'
end
puts "#{hash3}"