# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
target = Company.create(name: 'Target')
carlsberg = Company.create(name: 'Carlsberg')
ashi = Company.create(name: 'Ashi')
Order.create(name: 'Ale', amount:50,  price: 5.90, company: target)
Order.create(name: 'Stout', amount:60,  price: 10.90, company: target)
Order.create(name: 'Pilsener', amount:70,  price: 3.90, company: ashi)
Order.create(name: 'Stela', amount:80,  price: 8.90, company: carlsberg)