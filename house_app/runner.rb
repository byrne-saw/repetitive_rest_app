require 'http'
require 'ffaker'

address = FFaker::Address.street_address
price = rand(50..5000)

response = HTTP.post("http://localhost:3000/api/houses", form: {address: address, price: price})

response.save