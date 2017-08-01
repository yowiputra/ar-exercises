require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Company total annual revenue: #{Store.sum(:annual_revenue)}"
puts "Company average annual revenue: #{Store.average(:annual_revenue)}"
puts "Number of stores with above 1000000 annual revenue: #{Store.where("annual_revenue > ?", 1000000).count}"
