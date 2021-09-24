# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lagunites = Company.create(name: 'lagunites', brewery_type: 'planning', city:"Chicago", phone:"773-556-9990", website_url: 'lagunites@lagunites.com');
carlsberg = Company.create(name: 'carlsberg', brewery_type: 'regional', city:"Alameda", phone:"null", website_url: 'carlsberg@carlsberg.com');
ashi = Company.create(name: 'ashi', brewery_type: 'planning', city:"Austin", phone:"567-890-5678", website_url: 'ashi@ashi.com');
Order.create(name: 'binny', amount:50,  price: 5.90, company: lagunites);
Order.create(name: 'Provisions', amount:60,  price: 10.90, company: lagunites);
Order.create(name: 'Bills', amount:70,  price: 3.90, company: ashi);
