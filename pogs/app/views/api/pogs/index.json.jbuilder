json.array! @pogs.each do |pog|
  json.id pog.id
  json.color pog.color
  json.size pog.size
  json.link "http://localhost:3000/api/pogs/#{pog.id}"
end