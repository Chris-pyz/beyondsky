# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
anna = User.create(name: 'Anna', email: 'anna@lewagon.com', password: '123456')
arnaud = User.create(name: 'Arnaud', email: 'arnaud@lewagon.com', password: '123456')
chris = User.create(name: 'Arnaud', email: 'chris@lewagon.com', password: '123456')
genevieve = User.create(name: 'Genevieve', email: 'genevieve@lewagon.com', password:'123456')

# v1 = Spaceship.create(name: 'Mantador IV', address: 'Marseille', price: '45,000,000', standing: 4, capacity: 300000)
# v2 = Spaceship.create(name: 'Airspeeder', address: 'Paris', price: '2,000,000', standing: 1, capacity: 1)
# v3 = Spaceship.create(name: 'Super Destroyer Stellaire', address: 'Lyon', price: '20,000,000', standing: 3, capacity: 280735)
# v4 = Spaceship.create(name: 'Snowspeeder', address: 'Toulouse', price: '5,000,000', standing: 2, capacity: 2)
# v5 = Spaceship.create(name: 'A-Wing RZ-1', address: 'Toulouse', price: '2,500,000', standing: 1, capacity: 1)
# v6 = Spaceship.create(name: 'B-Wing', address: 'Brest', price: '4,500,000', standing: 2, capacity: 2)
# v7 = Spaceship.create(name: 'TIE X1', address: 'Bordeaux', price: '15,000,000', standing: 1, capacity: 1)
# v8 = Spaceship.create(name: 'Destroyer Stellaire', address: 'Strasbourg', price: '75,000,000', standing: 5, capacity: 48000)
# v9 = Spaceship.create(name: 'Faucon Milenium', address: 'Paris', price: '60,000,000', standing: 5, capacity:10)
# v10 = Spaceship.create(name: 'J-type Star Skiff', address: 'Montpellier', price: '30,000,000', standing: 3, capacity: 3)
