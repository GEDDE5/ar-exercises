require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base

  puts "Total revenue for all stores: $#{Store.sum("annual_revenue")}"
  puts "Average revenue/store: $#{Store.average("annual_revenue").to_i}"
  puts "# of stores that are generating $1M or more in annual sales: #{Store.where("annual_revenue > 1000000").count}"

end