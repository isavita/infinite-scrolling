# coding: utf-8
Fabricator(:item) do
  name { Faker::Commerce.product_name }
  price { Faker::Commerce.price }
  picture { File.open("#{Rails.root}/app/assets/images/item/gas_stove.jpg") }
  user { Fabricate(:user) }
end