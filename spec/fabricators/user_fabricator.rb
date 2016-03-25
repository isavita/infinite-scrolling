# coding: utf-8
Fabricator(:user) do
  name { Faker::Name.name }
  avatar { File.open("#{Rails.root}/app/assets/images/user/robot.png") }
  age { Faker::Number.between(14, 70) }
  latitude { Faker::Address.latitude }
  longitude { Faker::Address.longitude }
end