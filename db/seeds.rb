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
oceania.countries.create([{name: 'Australia'}, {name: 'Fiji'},  {name: 'Kiribati'}, {name: 'Marshall Islands'}, {name: 'Micronesia'}, {name: 'Nauru'}, {name: 'New Zealand'}, {name: 'Palau'}, {name: 'Papua New Guinea'},
  {name: 'Samoa'}, {name: 'Solomon Islands'}, {name: 'Tonga'}, {name: 'Tuvalu'}, {name: 'Vanuatu'}])
europe.countries.create([{name: 'Albania'}, {name: 'Andorra'},  {name: 'Armenia'}, {name: 'Austria'}, {name: 'Azerbaijan'}, {name: 'Belarus'}, {name: 'Belgium'}, {name: 'Bosnia and Herzegovina'}, {name: 'Bulgaria'},
  {name: 'Croatia'}, {name: 'Cyprus'}, {name: 'Czech Republic'}, {name: 'Denmark'}, {name: 'Estonia'}, {name: 'Finland'}, {name: 'France'}, {name: 'Georgia'}, {name: 'Germany'}, {name: 'Greece'},
  {name: 'Hungary'}, {name: 'Iceland'}, {name: 'Ireland'}, {name: 'Italy'}, {name: 'Latvia'}, {name: 'Liechtenstein'}, {name: 'Lithuania'}, {name: 'Luxembourg'}, {name: 'Macedonia'}, {name: 'Malta'}, {name: 'Moldova'},
  {name: 'Monaco'}, {name: 'Montenegro'}, {name: 'Netherlands'}, {name: 'Norway'}, {name: 'Poland'}, {name: 'Portugal'}, {name: 'Romania'}, {name: 'San Marino'}, {name: 'Serbia'}, {name: 'Slovakia'},
  {name: 'Slovenia'}, {name: 'Spain'}, {name: 'Sweden'}, {name: 'Switzerland'}, {name: 'Ukraine'}, {name: 'United Kingdom'}, {name: 'Vatican City'}])
asia.countries.create([{name: 'Afghanistan'}, {name: 'Bahrain'},  {name: 'Bangladesh'}, {name: 'Bhutan'}, {name: 'Brunei'}, {name: 'Cambodia'}, {name: 'China'}, {name: 'East Timor'}, {name: 'India'},
  {name: 'Indonesia'}, {name: 'Iran'}, {name: 'Iraq'}, {name: 'Israel'}, {name: 'Japan'}, {name: 'Jordan'}, {name: 'Kazakhstan'}, {name: 'Kuwait'}, {name: 'Kyrgyzstan'}, {name: 'Laos'},
  {name: 'Lebanon'}, {name: 'Malaysia'}, {name: 'Maldives'}, {name: 'Mongolia'}, {name: 'Myanmar (Burma)'}, {name: 'Nepal'}, {name: 'North Korea'}, {name: 'Oman'}, {name: 'Pakistan'}, {name: 'Phillippines'}, {name: 'Qatar'},
  {name: 'Russia'}, {name: 'Saudi Arabia'}, {name: 'Singapore'}, {name: 'South Korea'}, {name: 'Sri Lanka'}, {name: 'Syria'}, {name: 'Tajikistan'}, {name: 'Thailand'}, {name: 'Turkey'}, {name: 'Turkmenistan'},
  {name: 'United Arab Emirates'}, {name: 'Uzbekistan'}, {name: 'Vietnam'}, {name: 'Yemen'}])
namerica.countries.create([{name: 'Antigua and Barbuda'}, {name: 'Bahamas'},  {name: 'Barbados'}, {name: 'Belize'}, {name: 'Canada'}, {name: 'Costa Rica'}, {name: 'Cuba'}, {name: 'Dominica'}, {name: 'Dominican Republic'},
  {name: 'El Salvador'}, {name: 'Grenada'}, {name: 'Guatemala'}, {name: 'Haiti'}, {name: 'Honduras'}, {name: 'Jamaica'}, {name: 'Mexico'}, {name: 'Nicaragua'}, {name: 'Panama'}, {name: 'Saint Kitts and Nevis'},
  {name: 'Saint Lucia'}, {name: 'Saint Vincent and the Grenadines'}, {name: 'Trinidad and Tobago'}, {name: 'United States'}])
