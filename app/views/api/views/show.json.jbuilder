json.user current_user.name


json.countries @countries do |country|
  json.extract! country, :name
  json.continent country.continent.name
end



json.visited current_user.countries do |country|
  json.extract! country, :name
  json.continent country.continent.name
end
