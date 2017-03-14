require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee < ActiveRecord::Base
  before_create :set_password

  private
  def set_password
    self.password = Randomstring.generate(8)
  end
end

with_password = Employee.new(first_name: "Testing", last_name: "Password", hourly_rate: 50)
with_password.save

puts "New employee created:"
puts "Name: #{with_password.last_name}, #{with_password.first_name}"
puts "Password: #{with_password.password}"