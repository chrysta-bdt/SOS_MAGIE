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
user5 = User.create!(name: 'Pascal Francois', email: 'pascalfrancois@hotmail.com', password: 122341)
user6 = User.create!(name: 'Christian Sinclair', email: 'christiansinclair@gmail.com', password: 6728462)
user7 = User.create!(name: 'André Sullivan', email: 'andrésullivan@yahoo.com', password: 456253)
user8 = User.create!(name: 'Daniel Basil', email: 'danielbasil@orange.fr', password: 5621896)

puts "Creating service seeds...."

service1 = Service.create!(name: 'Tirage des cartes', category: 'love',
                          description: "Des questions sur votre vie sentimentale ? Le tarot de l'amour vous donnera des pistes sur vous, sur votre partenaire et votre duo. Ainsi, vous aurez toutes les clés pour vous aider à mieux interpréter les signes de votre vie amoureuse. Que vous soyez célibataire ou en couple, le jeu de tarot amoureux vous révélera tous les secrets de votre avenir amoureux. (une séance de 30 minutes).",
                          price: 50, witch: user1, image_url: "https://parade.com/wp-content/uploads/2021/10/Tarot-Cards-Feat.jpg")
service2 = Service.create!(name: "Préparation de potion d'amour", category: 'love',
                          description: "Cette potion touche à toutes les facettes de l’amour : la douceur des sentiments à travers ses arômes fruités de cerises et le côté piquant de la passion avec ses pincées de piment qui viendront réchauffer doucement les papilles et le coeur de votre bien aimé(e). (1 flacon de 100 ml).",
                          price: 75, witch: user2, image_url: "https://images.immediate.co.uk/production/volatile/sites/7/2013/02/GettyImages-503196822_Shy-714baa1.jpg?quality=90&resize=620,413")

service3 = Service.create!(name: 'Lecture de boule de crystal', category: 'theft',
                          description: "Vous connaitrez l'identité de celui qui vous vol (une séance de 30 minutes).",
                          price: 150, witch: user3, image_url: "https://images.unsplash.com/photo-1551029506-0807df4e2031?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1034&q=80")
service4 = Service.create!(name: "Jeter un mauvais sort (malédiction)", category: 'theft',
                          description: " Jeter un sortilège de magie noire qui permet de nuire à une personne en l’exposant à des évènements néfastes (accident, maladie, malchance…). (Efficacité en moins de 24 heures).",
                          price: 250, witch: user4, image_url: "https://i.ytimg.com/vi/itH5xyVqMDE/maxresdefault.jpg")

service5 = Service.create!(name: 'Création de poupée', category: 'conflict',
                          description: 'Prenez le control de ta cible et arrivez à votre fin. ',
                          price: 300, witch: user5, image_url: "https://www.creativeboom.com/uploads/articles/68/68c108d28851f4d15db365810fdefc15c769d35c_810.jpeg")
service6 = Service.create!(name: 'Livre de recettes magiques', category: 'conflict',
                          description: 'Un livre de recettes magiques qui permettre de calmer tous types de conflits(mariage, travail, famille...). ',
                          price: 200, witch: user6, image_url: "https://cdn.myonlinestore.eu/930d50f2-fed9-46b9-9d1e-ce811954cdc8/image/cache/full/e418afc142d0a25970a3f646544265caf87c5d96.jpg")

service7 = Service.create!(name: 'Manipulation de le Pendule', category: 'money',
                          description: 'Découvrez comment réussir votre vie grace à notre pendule âgé deplus de 500 ans. (une séance de 30 minutes)',
                          price: 100, witch: user7, image_url: "https://images.unsplash.com/photo-1616785550406-0fd04cac3c24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80)")
service8 = Service.create!(name: "Rituel pour attirer l'argent", category: 'money',
                          description: "Un rituel qui consiste d'incantations puissantes qui vous permettra d'être propriétaire d'un arbre d'argent (Efficacité dans une semaine)",
                          price: 500, witch: user8, image_url: "https://avaazdo.s3.amazonaws.com/f09905871aa2cba81b04ec72d0cbae6d.jpg")
# service5 = Service.create(name: '', category: 'theft', description: '', price: '')
# service6 = Service.create(name: '', category: 'conflict', description: '', price: '')
# service7 = Service.create(name: '', category: 'money', description: '', price: '')
# service8 = Service.create(name: , category: 'money', description: '', price: '')
# service9 = Service.create(name: '', category: 'love', description: '', price: '')
# service10 = Service.create(name: '', category: 'theft', description: '', price: '')

puts "Finished creating seeds!"
