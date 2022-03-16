# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.destroy_all
User.destroy_all

puts "Creating witch seeds..."
user1 = User.create!(name: 'Subrina JOSEPH', email: 'subrina@hotmail.com', password: 122345)
user2 = User.create!(name: 'Chrysta Bidoyet', email: 'chrysta@gmail.com', password: 6728463)
user3 = User.create!(name: 'Audrey SUFRIN', email: 'audrey@yahoo.com', password: 456251)
user4 = User.create!(name: 'Désirée Bigorre', email: 'desiree@orange.fr', password: 5621896)


puts "Creating service seeds...."

service1 = Service.create!(name: 'Tirage des cartes', category: 'love',
                          description: "Découvrez ce que l'avenir vous réserve (une séance de 30 minutes).",
                          price: '50 €', witch: user1)
service2 = Service.create!(name: 'Lecture de boule de crystal', category: 'theft',
                          description: "Vous connaitrez l'identité de celui qui vous vol (une séance de 30 minutes).",
                          price: '150€', witch: user2)
service3 = Service.create!(name: 'Création de poupée', category: 'conflict',
                          description: 'Prenez le control de ta cible et arrivez à votre fin',
                          price: '200 €', witch: user3)
service4 = Service.create!(name: 'Manipulation de la Pendule', category: 'money',
                          description: 'Découvrez comment réussir votre vie (une séance de 30 minutes)',
                          price: '100 €', witch: user4)

# service5 = Service.create(name: '', category: 'theft', description: '', price: '')
# service6 = Service.create(name: '', category: 'conflict', description: '', price: '')
# service7 = Service.create(name: '', category: 'money', description: '', price: '')
# service8 = Service.create(name: , category: 'money', description: '', price: '')
# service9 = Service.create(name: '', category: 'love', description: '', price: '')
# service10 = Service.create(name: '', category: 'theft', description: '', price: '')

puts "Finished creating seeds!"
