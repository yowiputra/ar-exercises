require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey_store = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
whistler_store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
yaletown_store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

query = Store.where(mens_apparel: true)
query.each do |store|
  puts store.name
  puts store.annual_revenue
end

another_query = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
another_query.each do |store|
  puts store.name
  puts store.annual_revenue
end
