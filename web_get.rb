require 'net/http'

example = Net::HTTP.get('example.com','/index.html')

File.open('example.html','w') do |line|
    print example
    line.puts(example)
end