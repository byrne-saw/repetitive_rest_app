150.times do
  address = FFaker::Address.street_address
  price =rand(55..500)

  house = House.new(
                    address: address, 
                    price:price
                    )
  house.save  
end