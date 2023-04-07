# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Car.destroy_all
# Reservation.destroy_all

user1 = User.create(name: 'Ndikumana Isaie', email: 'ndikumanaisaie@gmail.com', password: '123456')
user2 = User.create(name: 'Abdullah Asghar', email: 'dulakhan024@gmail.com', password: '123456')
user3 = User.create(name: 'Promise Okechukwu', email: 'okechukwupromise638@gmail.com', password: '123456')

car1 = Car.create(name: 'Jeep', model: 'Range Rover', description: 'Best car ever', price: 2000, user_id: user1.id, image_url: 'https://user-images.githubusercontent.com/65233860/178718381-cd6cfcff-a804-4d35-95af-705794d4c4a8.png')
car2 = Car.create(name: 'Tesla', model: 'Model X', description: 'With lasting battery', price: 14000, user_id: user2.id, image_url: 'https://user-images.githubusercontent.com/65233860/178718933-f55aea72-e56c-4f14-9032-a4902203f77a.png')
car3 = Car.create(name: 'Toyota', model: 'Carina', description: 'A very confortable car', price: 13250, user_id: user3.id, image_url: 'https://user-images.githubusercontent.com/65233860/178718657-5d0b9f51-8a97-4045-a14a-c70913891275.png')
car4 = Car.create(name: 'Lamborghini', model: 'lambo', description: 'A very luxarious car', price: 13250, user_id: user1.id, image_url: 'https://user-images.githubusercontent.com/65233860/178718657-5d0b9f51-8a97-4045-a14a-c70913891275.png')

reservation1 = Reservation.create(pickup_date: '2020-02-02', return_date: '2023-01-04', city: 'Bujumbura', user_id: user1.id, car_id: car1.id)
reservation2 = Reservation.create(pickup_date: '2020-02-02', return_date: '2023-01-04', city: 'Danmark', user_id: user2.id, car_id: car2.id)
reservation3 = Reservation.create(pickup_date: '2020-02-02', return_date: '2023-01-04', city: 'Nigeria', user_id: user3.id, car_id: car3.id)

