# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create! id: 1, title: "Trays", description: "Test", price: 5, pack_size: 5, product_code: "SKU32879"
Product.create! id: 2, title: "Medics", description: "Test2", price: 5, pack_size: 15, product_code: "SKU32222"
Product.create! id: 3, title: "Dispens", description: "Test3", price: 5, pack_size: 10, product_code: "SKU32564"

Order.delete_all
