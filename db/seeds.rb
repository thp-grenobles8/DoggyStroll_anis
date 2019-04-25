# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
3.times do |index|
	City.create!(
		name: Faker::Address.city 
	)
end

Dogsitter.destroy_all
5.times do |index|
	Dogsitter.create!(
		first_name: Faker::Name.first_name, 
		last_name: Faker::Name.last_name,
		city: City.all.sample
	)
end

Dog.destroy_all
10.times do |index|
	Dog.create!(
		name: Faker::Name.first_name, 
		city: City.all.sample
	)
end

Stroll.destroy_all
20.times do |index|
	Stroll.create!(
		date: Faker::Date.forward(5),
		dogsitter: Dogsitter.all.sample,
		dog: Dog.all.sample,
		city: City.all.sample
	)		
end	