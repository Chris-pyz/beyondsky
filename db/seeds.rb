# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Spaceship.destroy_all
User.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
anna = User.create(name: 'Anna', email: 'anna@lewagon.com', password: '123456')
arnaud = User.create(name: 'Arnaud', email: 'arnaud@lewagon.com', password: '123456')
chris = User.create(name: 'Chris', email: 'chris@lewagon.com', password: '123456')
genevieve = User.create(name: 'Genevieve', email: 'genevieve@lewagon.com', password:'123456')

v1 = Spaceship.create(name: 'Mantador IV', address: '5 place jussieu 75005 Paris', price: '45,000,000', standing: 4, capacity: '300000', user: anna)
v2 = Spaceship.create(name: 'Airspeeder', address: '41 cours franklin roosevelt 13005 Marseille', price: '2,000,000', standing: 1, capacity: '1', user: chris)
v3 = Spaceship.create(name: 'Super Destroyer Stellaire', address: '112 plan de clavel 13330 Pelissanne', price: '20,000,000', standing: 3, capacity: '280735', user: arnaud)
v4 = Spaceship.create(name: 'Snowspeeder', address: '5 rue soufflot 31200 Toulouse', price: '5,000,000', standing: 2, capacity: '2', user: genevieve)
v5 = Spaceship.create(name: 'A-Wing RZ-1', address: '6 chemin de lanusse Toulouse', price: '2,500,000', standing: 1, capacity: '1', user: arnaud)
v6 = Spaceship.create(name: 'B-Wing', address: '1 avenue victor gorgeu 29200 Brest', price: '4,500,000', standing: 2, capacity: '2', user: anna)
v7 = Spaceship.create(name: 'TIE X1', address: '22 avenue léon blum 33110 le Bouscat', price: '15,000,000', standing: 1, capacity: '1', user: chris)
v8 = Spaceship.create(name: 'Destroyer Stellaire', address: '2 rue gutenberg  67000 Strasbourg', price: '75,000,000', standing: 5, capacity: '48000', user: genevieve)
v9 = Spaceship.create(name: 'Faucon Milenium', address: '20 rue des vignoles 75020 Paris', price: '60,000,000', standing: 5, capacity:'10', user: anna)
v10 = Spaceship.create(name: 'J-type Star Skiff', address: '3 rue foch 34000 Montpellier', price: '30,000,000', standing: 3, capacity: '3', user: arnaud)
