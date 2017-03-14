require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

class Store < ActiveRecord::Base

  @store1 = Store.find(1)
  @store2 = Store.find(2)

  @store1.name = "Burnsaby"
  @store1.save

end
