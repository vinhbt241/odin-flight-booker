# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
Flight.delete_all

Airport.create(code: "VCA")
Airport.create(code: "DAD")
Airport.create(code: "HPH")
Airport.create(code: "HAN")
Airport.create(code: "SGN")
Airport.create(code: "CXR")
Airport.create(code: "PQC")
Airport.create(code: "VII")
Airport.create(code: "HUI")

Flight.create(departure_airport_id: 1, arrival_airport_id: 2, flight_date: Date.new(2022, 4, 5),flight_time: Time.new(2022, 4, 5, 7).strftime("%k:%M"), duration: 3)
Flight.create(departure_airport_id: 1, arrival_airport_id: 2, flight_date: Date.new(2022, 4, 5),flight_time: Time.new(2022, 4, 5, 8, 30).strftime("%k:%M"), duration: 4)
Flight.create(departure_airport_id: 1, arrival_airport_id: 2, flight_date: Date.new(2022, 4, 5),flight_time: Time.new(2022, 4, 5, 9, 35).strftime("%k:%M"), duration: 5)
Flight.create(departure_airport_id: 8, arrival_airport_id: 9, flight_date: Date.new(2022, 4, 5), flight_time: Time.new(2022, 4, 5, 5).strftime("%k:%M"), duration: 2)
Flight.create(departure_airport_id: 4, arrival_airport_id: 6, flight_date: Date.new(2022, 4, 6), flight_time: Time.new(2022, 4, 6, 9).strftime("%k:%M"), duration: 5.5)
Flight.create(departure_airport_id: 2, arrival_airport_id: 5, flight_date: Date.new(2022, 4, 7), flight_time: Time.new(2022, 4, 7, 11).strftime("%k:%M"), duration: 6.5)
Flight.create(departure_airport_id: 7, arrival_airport_id: 3, flight_date: Date.new(2022, 4, 8),flight_time: Time.new(2022, 4, 8, 13).strftime("%k:%M"), duration: 2.5)
