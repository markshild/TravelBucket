json.top @top do |user|
  json.extract! user, :name, :number
end

json.africa @africa do |user|
  json.extract! user, :name
  json.number user.number/5
end

json.asia @asia do |user|
  json.extract! user, :name
  json.number user.number/5
end

json.europe @europe do |user|
  json.extract! user, :name
  json.number user.number/5
end

json.namerica @namerica do |user|
  json.extract! user, :name
  json.number user.number/5
end

json.oceania @oceania do |user|
  json.extract! user, :name
  json.number user.number/5
end

json.samerica @samerica do |user|
  json.extract! user, :name
  json.number user.number/5
end
