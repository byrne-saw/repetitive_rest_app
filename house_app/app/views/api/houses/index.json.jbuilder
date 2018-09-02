json.array! @houses.each do |house|
  json.id house.id
  json.address house.address
  json.price house.price
  json.link "http://localhouse:3000/api/houses/#{house.id}"
end