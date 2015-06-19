# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list = List.create(name: "Homework")
list.items.create :task => "cipher", :due_date => Date.today, :is_complete => false
list.items.create :task => "koans", :due_date => 1.day.ago, :is_complete => false
list.items.create :task => "life_tracker", :due_date => 2.days.from_now, :is_complete => false