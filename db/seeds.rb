# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
africa = Continent.create({name: 'Africa'} )
namerica = Continent.create({name: 'North America'} )
samerica = Continent.create({name: 'South America'} )
europe = Continent.create({name: 'Europe'} )
oceania = Continent.create({name: 'Oceania'} )
asia = Continent.create({name: 'Asia'} )
africa.countries.create([{name: 'Algeria'}, {name: 'Angola'},  {name: 'Benin'}, {name: 'Botswana'}, {name: 'Burkina'}, {name: 'Burundi'}, {name: 'Cameroon'}, {name: 'Cape Verde'}, {name: 'Central African Republic'},
  {name: 'Chad'}, {name: 'Comoros'}, {name: 'Congo'}, {name: 'Democratic Republic of Congo'}, {name: 'Djibouti'}, {name: 'Egypt'}, {name: 'Equatorial Guinea'}, {name: 'Eritrea'}, {name: 'Ethiopia'}, {name: 'Gabon'},
  {name: 'Gambia'}, {name: 'Ghana'}, {name: 'Guinea'}, {name: 'Guinea-Bissau'}, {name: 'Ivory Coast'}, {name: 'Kenya'}, {name: 'Lesotho'}, {name: 'Liberia'}, {name: 'Libya'}, {name: 'Madagascar'}, {name: 'Mali'},
  {name: 'Mauritania'}, {name: 'Mauritius'}, {name: 'Morocco'}, {name: 'Mozambique'}, {name: 'Namibia'}, {name: 'Niger'}, {name: 'Nigeria'}, {name: 'Rwanda'}, {name: 'Sao Tome and Principe'}, {name: 'Senegal'},
  {name: 'Seychelles'}, {name: 'Sierra Leone'}, {name: 'Somalia'}, {name: 'South Africa'}, {name: 'South Sudan'}, {name: 'Sudan'}, {name: 'Swaziland'}, {name: 'Tanzania'}, {name: 'Togo'}, {name: 'Tunisia'},
  {name: 'Uganda'}, {name: 'Zambia'}, {name: 'Zimbabwe'}])
samerica.countries.create([{name: 'Argentina'}, {name: 'Bolivia'},  {name: 'Brazil'}, {name: 'Chile'}, {name: 'Colombia'}, {name: 'Ecuador'}, {name: 'Guyana'}, {name: 'Paraguay'}, {name: 'Peru'},
    {name: 'Suriname'}, {name: 'Uruguay'}, {name: 'Venezuela'}])
