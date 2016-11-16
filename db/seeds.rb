# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
(1..10).each do |i|
  p= Project.create!(name: "Ironhack #{i}", description: "Description #{i}")
  p.time_entries.create!(hours: i, minutes: i*rand(5..7), date: Date.today)
end
