# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


u1 = User.create(email:"comprador@gmail.com", first_name:"Comprador", last_name: "C", phone_number:"99999",RUT:"12121-comprador", user_type:'Comprador', password:'12345678')
u2 = User.create(email:"proveedor@gmail.com", first_name:"Proveedor", last_name: "P", phone_number:"99999",RUT:"2313-proveedor", user_type:'Proveedor', password:'12345678')
u3 = User.create(email:"despachador@gmail.com", first_name:"Despachador", last_name: "D", phone_number:"99999",RUT:"11-despachador", user_type:'Despachador', password:'12345678')


o1 = Order.create(status_order: "En transito", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: u1.id, provider_id: 2, dispatcher_id: 3)
o2 = Order.create(status_order: "Completada", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: 1, provider_id: 2, dispatcher_id: 3)
o3 = Order.create(status_order: "Recepción en sistema de logistica", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: 1, provider_id: 2, dispatcher_id: 3)
o4 = Order.create(status_order: "Recepción en sistema de logistica", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: 2, provider_id: 2, dispatcher_id: 3)

a1 = Address.create(commune:"Vitacura",street:"vitacura",number_address:"8890",extra_information:"None",user_id:1)
a2 = Address.create(commune:"Las Condes",street:"alcantara",number_address:"1111",extra_information:"I like trains",user_id:1)
a3 = Address.create(commune:"Lo Barnechea",street:"huechuraba",number_address:"2342",user_id:1)
a4 = Address.create(commune:"La Reina",street:"hamburgo",number_address:"0909",extra_information:"I like turtles",user_id:2)

o5 = Order.create(status_order: "En transito", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: u1.id, provider_id: u2.id, dispatcher_id: u3.id)
o6 = Order.create(status_order: "Completada", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: u1.id, provider_id: u2.id, dispatcher_id: u3.id)
o7 = Order.create(status_order: "Recepción en sistema de logistica", order_delivery_date: '1998-10-04 10:10:10', order_date: '1998-09-04 10:10:10', buyer_id: u1.id, provider_id: u2.id, dispatcher_id: u3.id)

