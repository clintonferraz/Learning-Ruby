require 'rest-client'
require 'json'


puts "Digite o código da moeda inicial:"
from_currency_code = gets.chomp
puts "Digite o valor a ser convertido:"
from_value = gets.chomp.to_f
puts "Digite o código da moeda final:"
to_currency_code = gets.chomp 

auth_key = "zmJyb4lghRoarl4eqiHlgXLQj2kCohjXAim8"
response = RestClient.get('https://currencyapi.net/api/v1/rates?key=' + auth_key)

hash_response = JSON.parse(response.body)

from_currency_rate = hash_response["rates"][from_currency_code]
to_currency_rate = hash_response["rates"][to_currency_code]

to_value = (from_value / from_currency_rate) * to_currency_rate

puts from_currency_rate
puts to_currency_rate

puts to_value




