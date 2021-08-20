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

require "open-uri"

file = URI.open('https://fr.web.img5.acsta.net/r_1920_1080/newsv7/17/12/11/15/47/56171800.jpg')
v1 = Spaceship.create(name: 'Mantador IV', address: '5 place jussieu 75005 Paris', price: '45,000,000', standing: 4, capacity: '300000', user: anna)
v1.photos.attach(io: file, filename: 'mantador.jpg', content_type: 'image/jpg')

file = URI.open('https://fr.web.img6.acsta.net/r_1920_1080/newsv7/17/12/11/16/03/05698800.jpg')
v2 = Spaceship.create(name: 'Airspeeder', address: '41 cours franklin roosevelt 13005 Marseille', price: '2,000,000', standing: 1, capacity: '1', user: chris)
v2.photos.attach(io: file, filename: 'airspeeder.jpg', content_type: 'image/jpg')

# v1 = Spaceship.create(name: 'Mantador IV', address: '5 place jussieu 75005 Paris', price: '45,000,000', standing: 4, capacity: '300000', user: anna)
# v2 = Spaceship.create(name: 'Airspeeder', address: '41 cours franklin roosevelt 13005 Marseille', price: '2,000,000', standing: 1, capacity: '1', user: chris)

file = URI.open('https://fr.web.img6.acsta.net/r_1920_1080/newsv7/16/12/14/11/39/1399120.jpg')
v3 = Spaceship.create(name: 'Super Destroyer Stellaire', address: '112 plan de clavel 13330 Pelissanne', price: '20,000,000', standing: 3, capacity: '280735', user: arnaud)
v3.photos.attach(io: file, filename: 'super-destroyer-stellaire.jpg', content_type: 'image/jpg')
# v3 = Spaceship.create(name: 'Super Destroyer Stellaire', address: '112 plan de clavel 13330 Pelissanne', price: '20,000,000', standing: 3, capacity: '280735', user: arnaud)

file = URI.open('https://fr.web.img6.acsta.net/r_1920_1080/newsv7/16/12/14/11/39/0421980.jpg')
v4 = Spaceship.create(name: 'Snowspeeder', address: '5 rue soufflot 31200 Toulouse', price: '5,000,000', standing: 2, capacity: '2', user: genevieve)
v4.photos.attach(io: file, filename: 'Snowspeeder.jpg', content_type: 'image/jpg')
# v4 = Spaceship.create(name: 'Snowspeeder', address: '5 rue soufflot 31200 Toulouse', price: '5,000,000', standing: 2, capacity: '2', user: genevieve)

file = URI.open('https://fr.web.img4.acsta.net/r_1920_1080/newsv7/16/12/14/10/39/5894300.jpg')
v5 = Spaceship.create(name: 'A-Wing RZ-1', address: '6 chemin de lanusse Toulouse', price: '2,500,000', standing: 1, capacity: '1', user: arnaud)
v5.photos.attach(io: file, filename: 'A-Wing-RZ-1.jpg', content_type: 'image/jpg')
# v5 = Spaceship.create(name: 'A-Wing RZ-1', address: '6 chemin de lanusse Toulouse', price: '2,500,000', standing: 1, capacity: '1', user: arnaud)

file = URI.open('https://fr.web.img6.acsta.net/r_1920_1080/newsv7/16/12/14/11/38/0322150.jpg')
v6 = Spaceship.create(name: 'B-Wing', address: '1 avenue victor gorgeu 29200 Brest', price: '4,500,000', standing: 2, capacity: '2', user: anna)
v6.photos.attach(io: file, filename: 'B-Wing.jpg', content_type: 'image/jpg')
# v6 = Spaceship.create(name: 'B-Wing', address: '1 avenue victor gorgeu 29200 Brest', price: '4,500,000', standing: 2, capacity: '2', user: anna)

file = URI.open('https://fr.web.img4.acsta.net/r_1920_1080/newsv7/16/12/14/12/05/4799650.jpg')
v7 = Spaceship.create(name: 'TIE X1', address: '22 avenue léon blum 33110 le Bouscat', price: '15,000,000', standing: 1, capacity: '1', user: chris)
v7.photos.attach(io: file, filename: 'TIE X1.jpg', content_type: 'image/jpg')
# v7 = Spaceship.create(name: 'TIE X1', address: '22 avenue léon blum 33110 le Bouscat', price: '15,000,000', standing: 1, capacity: '1', user: chris)

file = URI.open('https://fr.web.img6.acsta.net/r_1920_1080/newsv7/16/12/14/12/25/3013400.jpg')
v8 = Spaceship.create(name: 'Destroyer Stellaire', address: '2 rue gutenberg  67000 Strasbourg', price: '75,000,000', standing: 5, capacity: '48000', user: genevieve)
v8.photos.attach(io: file, filename: 'Destroyer-Stellaire.jpg', content_type: 'image/jpg')
# v8 = Spaceship.create(name: 'Destroyer Stellaire', address: '2 rue gutenberg  67000 Strasbourg', price: '75,000,000', standing: 5, capacity: '48000', user: genevieve)

file = URI.open('https://fr.web.img3.acsta.net/r_1920_1080/newsv7/16/12/14/12/51/4970480.jpg')
v9 = Spaceship.create(name: 'Faucon Milenium', address: '20 rue des vignoles 75020 Paris', price: '60,000,000', standing: 5, capacity:'10', user: anna)
v9.photos.attach(io: file, filename: 'Faucon-Milenium.jpg', content_type: 'image/jpg')
# v9 = Spaceship.create(name: 'Faucon Milenium', address: '20 rue des vignoles 75020 Paris', price: '60,000,000', standing: 5, capacity:'10', user: anna)

file = URI.open('https://fr.web.img3.acsta.net/r_1920_1080/newsv7/16/12/14/13/22/0998940.jpg')
v10 = Spaceship.create(name: 'J-type Star Skiff', address: '3 rue foch 34000 Montpellier', price: '30,000,000', standing: 3, capacity: '3', user: arnaud)
v10.photos.attach(io: file, filename: 'J-type-Star-Skiff.jpg', content_type: 'image/jpg')
# v10 = Spaceship.create(name: 'J-type Star Skiff', address: '3 rue foch 34000 Montpellier', price: '30,000,000', standing: 3, capacity: '3', user: arnaud)
