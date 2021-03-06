
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
user9 = User.create!(name: 'Cassie Ferdinand', email: 'cassieferdinand@orange.fr', password: 5621895)
user10 = User.create!(name: 'Tess Charles', email: 'tesscharles@orange.fr', password: 5621895)


puts "Creating service seeds...."

service1 = Service.create!(name: 'Tirage des cartes Tarot', category: 'love',
                          description: "Des questions sur votre vie sentimentale ? Le tarot de l'amour vous donnera des pistes sur vous, sur votre partenaire et votre duo. Ainsi, vous aurez toutes les clés pour vous aider à mieux interpréter les signes de votre vie amoureuse. Que vous soyez célibataire ou en couple, le jeu de tarot amoureux vous révélera tous les secrets de votre avenir amoureux. (une séance de 30 minutes).",
                          price: 50, witch: user1, image_url: "https://parade.com/wp-content/uploads/2021/10/Tarot-Cards-Feat.jpg")

service2 = Service.create!(name: "Préparation de potion d'amour", category: 'love',
                          description: "Cette potion touche à toutes les facettes de l’amour : la douceur des sentiments à travers ses arômes fruités de cerises et le côté piquant de la passion avec ses pincées de piment qui viendront réchauffer doucement les papilles et le coeur de votre bien aimé(e). (1 flacon de 100 ml).",
                          price: 75, witch: user2, image_url: "https://images.immediate.co.uk/production/volatile/sites/7/2013/02/GettyImages-503196822_Shy-714baa1.jpg?quality=90&resize=620,413")
service9 = Service.create!(name: 'Augmentation de libido', category: 'love',
                          description: "Notre duo de rituel et concoction magique vous garantie de résoudre tous vos soucis liés à votre sexualité (troubles de sexualité, l'impuissance sexuelle, la frigidité ou l'éjaculation précoce)(Efficacité: instantané)",
                          price: 150, witch: user9, image_url: "https://cdn.shopify.com/s/files/1/0012/2522/8355/products/Magic_Potion_2_2048x.jpg?v=1539191648")
service10 = Service.create!(name: "Mariage spirituel", category: 'love',
                          description: "Officialisé par HARRY POTTER, ce rituel de mariage comblera les couples voulant s'unir aux forces de la nature pendant leur cérémonie enchantée..",
                          price: 1000, witch: user10, image_url: "https://www.hazlewood-castle.co.uk/storage//uploads/variants/119/wed29-1.jpg")

service3 = Service.create!(name: 'Lecture de boule de cristal', category: 'theft',
                          description: "Vous connaitrez l'identité de celui qui vous vole (une séance de 30 minutes).",
                          price: 150, witch: user3, image_url: "https://images.unsplash.com/photo-1551029506-0807df4e2031?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1034&q=80")

service4 = Service.create!(name: "Jeter un mauvais sort (malédiction)", category: 'theft',
                          description: " Jeter un sortilège de magie noire qui permet de nuire à une personne en l’exposant à des évènements néfastes (accident, maladie, malchance…). (Efficacité en moins de 24 heures).",
                          price: 250, witch: user4, image_url: "https://i.ytimg.com/vi/itH5xyVqMDE/maxresdefault.jpg")

service5 = Service.create!(name: 'Création de poupée', category: 'conflict',
                          description: 'Prenez le controle de votre cible et arrivez à votre fin. (efficacité en moins de 24 heures) ',
                          price: 300, witch: user5, image_url: "https://www.creativeboom.com/uploads/articles/68/68c108d28851f4d15db365810fdefc15c769d35c_810.jpeg")

service6 = Service.create!(name: 'Livre de recettes magiques', category: 'conflict',
                          description: 'Un livre de recettes magiques qui permettra de calmer tous types de conflits (mariage, travail, famille...) (10 recettes). ',
                          price: 200, witch: user6, image_url: "https://cdn.myonlinestore.eu/930d50f2-fed9-46b9-9d1e-ce811954cdc8/image/cache/full/e418afc142d0a25970a3f646544265caf87c5d96.jpg")

service7 = Service.create!(name: 'Manipulation de Pendule', category: 'money',
                          description: 'Découvrez comment réussir votre vie grâce à notre pendule âgé de plus de 500 ans. (une séance de 30 minutes)',
                          price: 100, witch: user7, image_url: "https://images.unsplash.com/photo-1616785550406-0fd04cac3c24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80)")

service8 = Service.create!(name: "Rituel pour attirer l'argent", category: 'money',
                          description: "Un rituel qui consiste en des incantations puissantes qui vous permettra d'être propriétaire d'un arbre d'argent (Efficacité dans 3 jours)",
                          price: 500, witch: user8, image_url: "https://avaazdo.s3.amazonaws.com/f09905871aa2cba81b04ec72d0cbae6d.jpg")


puts "Finished creating seeds!"
