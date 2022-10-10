# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
<<<<<<< HEAD
=======
u1 = User.create(email:"comprador@gmail.com", first_name:"Comprador", last_name: "C", phone_number:"99999",RUT:"12121-comprador", user_type:'Comprador', password:'12345678')
u2 = User.create(email:"proveedor@gmail.com", first_name:"Proveedor", last_name: "P", phone_number:"99999",RUT:"2313-proveedor", user_type:'Proveedor', password:'12345678')
u3 = User.create(email:"despachador@gmail.com", first_name:"Despachador", last_name: "D", phone_number:"99999",RUT:"11-despachador", user_type:'Despachador', password:'12345678')

o1 = Order.create(status_order: "En transito", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: u1.id, provider_id: u2.id, dispatcher_id: u3.id)
o2 = Order.create(status_order: "Completada", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: u1.id, provider_id: u2.id, dispatcher_id: u3.id)
o3 = Order.create(status_order: "Recepción en sistema de logistica", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: u1.id, provider_id: u2.id, dispatcher_id: u3.id)
>>>>>>> origin/matiasba8
