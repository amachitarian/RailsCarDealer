# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cardealer.create([
	{ company_name: 'Huiskes Kokkeler', brand: 'VW/Audi', location: 'Enschede', year: '2004' },
	{ company_name: 'Baan Twente', brand: 'Mercedes', location: 'Hengelo', year: '2002' }])

Review.create([
	{ name: 'Ashot Makhitarian', description: 'Great service, great workers!', rating: 7, cardealer_id: 1 },
	{ name: 'Artur Petrosyan', description: 'Best quality service and really quick', rating: 8, cardealer_id: 2 }])
