# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

user = User.new(
  name: "tuan",
  admin: true,
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)
user.save!


# InventoryItemCategory.create!([{
#   category_name: "Adidas",
#   image: Rails.root.join("app/assets/images/download.png").open
# },
# {
#   category_name: "Nike",
#   image: Rails.root.join("app/assets/images/nike_logo.png").open
# },
# {
#   category_name: "H&M",
#   image: Rails.root.join("app/assets/images/HM-Share-Image.jpg").open
# },
# ])

# InventoryItem.create!([{
#   name: "Nike 1",
#   price: "700",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "1",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open,
#   quantity: "100",
#   sold_quantity: "0"
# },
# {
#   name: "Nike 2",
#   price: "200",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "2",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open,
#   quantity: "200",
#   sold_quantity: "0"
# },
# {
#   name: "Nike 3",
#   price: "2200",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "2",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open,
#   quantity: "123",
#   sold_quantity: "0"
# },
# {
#   name: "Nike 4",
#   price: "400",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "2",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open,
#   quantity: "1234",
#   sold_quantity: "0"
# },
# {
#   name: "Nike 5",
#   price: "500",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "2",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open,
#   quantity: "232",
#   sold_quantity: "0"
# },
# {
#   name: "Nike 6",
#   price: "600",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "2",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open,
#   quantity: "1234",
#   sold_quantity: "0"
# },
# {
#   name: "Adidas 1",
#   price: "300",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "1",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/adidas_3.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "Adidas 2",
#   price: "1200",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "1",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/adidas_3.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "Adidas 3",
#   price: "300",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "1",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/adidas_3.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 1",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 2",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 3",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 4",
#   price: "120",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 5",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 6",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 7",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 8",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 9",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 10",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 11",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 12",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 13",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 14",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 15",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 16",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 17",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 18",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 19",
#   price: "100",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# },
# {
#   name: "H&M 20",
#   price: "400",  
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   inventory_item_category_id: "3",
#   inventory_model_id: "2",
#   image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
#   quantity: "0",
#   sold_quantity: "0"
# }])


# SpecificItem.create!([
# {
#   inventory_item_id: "1",
#   serial_number: "1"
# },
# {
#   inventory_item_id: "1",
#   serial_number: "2"
# },
# {
#   inventory_item_id: "1",
#   serial_number: "3"
# },
# {
#   inventory_item_id: "1",
#   serial_number: "4"
# },
# {
#   inventory_item_id: "1",
#   serial_number: "5"
# },
# {
#   inventory_item_id: "1",
#   serial_number: "6"
# },
# {
#   inventory_item_id: "1",
#   serial_number: "7"
# },
# {
#   inventory_item_id: "1",
#   serial_number: "8"
# },
# {
#   inventory_item_id: "2",
#   serial_number: "9"
# },
# {
#   inventory_item_id: "2",
#   serial_number: "10"
# },
# {
#   inventory_item_id: "2",
#   serial_number: "11"
# },
# {
#   inventory_item_id: "2",
#   serial_number: "12"
# },
# {
#   inventory_item_id: "2",
#   serial_number: "14"
# },
# {
#   inventory_item_id: "2",
#   serial_number: "15"
# }])

# Article.create!([{
#   name: "Thor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Batman",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "ádd",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thasdsdor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thdsdor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thosdsdr",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thasweor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thasfsor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thzxcxcor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thasqweor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thoasdqr",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thoasdfr",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thorzczx",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thoawqer",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thoasfar",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thoasdqr",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thqweweor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Thasdor",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Superman",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# },
# {
#   name: "Spider man",
#   description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
#   content: "hor is a fictional superhero appearing in American comic books published by Marvel Comics. The character, which is based on the Norse deity of the same name,",
#   image: Rails.root.join("app/assets/images/nike-men.jpg").open
# }])