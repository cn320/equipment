# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

<<<<<<< HEAD
equipments = [{:name => "Aladdin", :remain => "20"},{:name => "ssss", :remain => "10"}]

equipments.each do |equipment|
  Equipment.create!(equipment)
end
