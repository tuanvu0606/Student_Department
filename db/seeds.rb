# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])



InventoryItemCategory.create!([{
  category_name: "Adidas",
  image: Rails.root.join("app/assets/images/download.png").open
},
{
  category_name: "Nike",
  image: Rails.root.join("app/assets/images/nike_logo.png").open
},
{
  category_name: "H&M",
  image: Rails.root.join("app/assets/images/HM-Share-Image.jpg").open
},
])

InventoryItem.create!([{
  name: "Nike 1",
  price: "700",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "1",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/nike-men.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Nike 2",
  price: "200",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "2",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/nike-men.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Nike 3",
  price: "2200",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "2",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/nike-men.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Nike 4",
  price: "400",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "2",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/nike-men.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Nike 5",
  price: "500",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "2",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/nike-men.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Nike 6",
  price: "600",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "2",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/nike-men.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Adidas 1",
  price: "300",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "1",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/adidas_3.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Adidas 2",
  price: "1200",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "1",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/adidas_3.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "Adidas 3",
  price: "300",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "1",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/adidas_3.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "H&M 1",
  price: "100",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "3",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "H&M 2",
  price: "100",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "3",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "H&M 3",
  price: "120",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "3",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
  quantity: "0",
  sold_quantity: "0"
},
{
  name: "H&M 4",
  price: "400",  
  description: "Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  inventory_item_category_id: "3",
  inventory_model_id: "2",
  image: Rails.root.join("app/assets/images/HM-Shirts-for-Men_01.jpg").open,
  quantity: "0",
  sold_quantity: "0"
}])


SpecificItem.create!([
{
  inventory_item_id: "1",
  serial_number: "a"
},
{
  inventory_item_id: "1",
  serial_number: "b"
},
{
  inventory_item_id: "1",
  serial_number: "c"
},
{
  inventory_item_id: "1",
  serial_number: "d"
},
{
  inventory_item_id: "1",
  serial_number: "e"
},
{
  inventory_item_id: "1",
  serial_number: "f"
},
{
  inventory_item_id: "1",
  serial_number: "g"
},
{
  inventory_item_id: "1",
  serial_number: "h"
},
{
  inventory_item_id: "2",
  serial_number: "k"
},
{
  inventory_item_id: "2",
  serial_number: "q"
},
{
  inventory_item_id: "2",
  serial_number: "w"
},
{
  inventory_item_id: "2",
  serial_number: "e"
},
{
  inventory_item_id: "2",
  serial_number: "r"
}])