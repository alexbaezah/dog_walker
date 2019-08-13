# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


addresses = "Sta Amalia 11-61, La Florida, Region Metropolitana,
José Miguel Carrera 3-119, La Florida, Region Metropolitana,
San José de la Estrella 60-10, La Florida, Region Metropolitana,
José Miguel Carrera 398-350, La Florida, Region Metropolitana,
Enrique Olivares 557-597, La Florida, Region Metropolitana,
Colombia 8993, La Florida, Region Metropolitana
"

addresses2 = "Av Libertador Bernardo O'Higgins, Santiago, Región Metropolitana,
Cerro Sta. Lucia, Santiago, Región Metropolitana,
Curicó 200-58, Santiago, Región Metropolitana,
Sta Isabel 176, Santiago, Región Metropolitana,
Barrio Italia, Ñuñoa, Región Metropolitana"

addresses = addresses.split("\n")
addresses2 = addresses2.split("\n")

User.destroy_all
addresses.each do |address|
    User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: '123456', address:address)
    sleep 1
end



    

 DogWalking.destroy_all
addresses.each do |address|
    DogWalking.create!(name: Faker::Name.name, email: Faker::Internet.email, password: '123456', address:address)
    sleep 1
end
