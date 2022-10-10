# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
u1 = User.create(email:"comprador@gmail.com", first_name:"Comprador", last_name: "C", phone_number:"99999",RUT:"12121-comprador", user_type:'Comprador', password:'12345678')
u1 = User.create(email:"proveedor@gmail.com", first_name:"Proveedor", last_name: "P", phone_number:"99999",RUT:"2313-proveedor", user_type:'Proveedor', password:'12345678')
u1 = User.create(email:"despachador@gmail.com", first_name:"Despachador", last_name: "D", phone_number:"99999",RUT:"11-despachador", user_type:'Despachador', password:'12345678')
