# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(phone: '0501251232', password: '123123', password_confirmation: '123123', user_type: 'doctor')
#User.create(phone: '0501251231', password: '123123', password_confirmation: '123123', user_type: 'patient')