require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby_store = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond_store = Store.create(name: "Richmond", annual_revenue: 1260000, womens_apparel: true)
gastown_store = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true)

puts Store.count
