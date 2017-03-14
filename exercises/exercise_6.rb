require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base

  has_many :employees

  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store1.employees.create(first_name: "Donald", last_name: "T", hourly_rate: 60)
  @store1.employees.create(first_name: "Trump", last_name: "D", hourly_rate: 60)

  @store2.employees.create(first_name: "Justin", last_name: "T", hourly_rate: 60)
  @store2.employees.create(first_name: "Trudeau", last_name: "J", hourly_rate: 60)
  @store2.employees.create(first_name: "Christy", last_name: "C", hourly_rate: 60)

end

class Employee < ActiveRecord::Base
  belongs_to :store
end