require 'rest-client'
require 'json'

class Conversion 
    attr_accessor :from_currency_code, :from_value, :to_currency_code, :to_value, :fetch_response
    def user_interaction
        puts "Digite o código da moeda inicial:"
        @from_currency_code = gets.chomp
        puts "Digite o valor a ser convertido:"
        @from_value = gets.chomp.to_f
        puts "Digite o código da moeda final:"
        @to_currency_code = gets.chomp 
    end
    def fetch_data
        auth_key = "zmJyb4lghRoarl4eqiHlgXLQj2kCohjXAim8"
        @fetch_response = RestClient.get('https://currencyapi.net/api/v1/rates?key=' + auth_key)
        JSON.parse(@fetch_response.body)
    end
    def convert
        hash_response = self.fetch_data
        from_currency_rate = hash_response["rates"][@from_currency_code]
        to_currency_rate = hash_response["rates"][@to_currency_code]
        @to_value = (@from_value / from_currency_rate) * to_currency_rate
    end
    def write_result
        time = Time.now
        time = time.strftime('%d-%m-%y_%Hh%Mmin')
        File.open(time + ".txt",'a') do |line| 
            line.puts("Valor inicial: " + @from_value.to_s + " " + @from_currency_code)
            line.puts("Valor convertido : " + @to_value.to_s + " " + @to_currency_code)
        end
    end
    def start
        self.user_interaction
        puts "Valor convertido: " + self.convert.to_s + " " @to_currency_code
        self.write_result
    end
end

conversao1 = Conversion.new
conversao1.start



