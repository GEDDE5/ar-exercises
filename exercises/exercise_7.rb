require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  validates :name, presence: { message: "A store name must be given" }, length: { minimum: 3, message: "Store name must be at least (3) characters long" }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Annueal revenue must be an integer greater than or equal to (0)"}
end

class Employee < ActiveRecord::Base
  validates :first_name, presence: { message: "Employee first name must be given" }
  validates :last_name, presence: { message: "Employee last name must be given" }
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200, message: "Hourly rate must be an integer between 40 and 200" }
  validates_associated :store
end


puts "Please enter a store name for creation: "
name = gets.chomp
new_store = Store.new(name: name, annual_revenue: 10000)
new_store.save

if new_store.errors.size > 0
  puts "Errors found:"
  new_store.errors.each do | attr, message |
    puts "#{attr} field: #{message}"
  end
else
  puts "Successfully created store w/ name: #{name}"
end

