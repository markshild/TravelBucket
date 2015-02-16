json.user current_user.name


json.countries @countries do |country|
  json.extract! country, :name, :id
  json.continent country.continent.name
  if current_user.countries.include?(country)
    json.visit true
  else
    json.visit false
  end

end



json.visited current_user.countries do |country|
  json.extract! country, :name
  json.continent country.continent.name
end
