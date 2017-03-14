require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base

  Store.create(
     name: "Surrey",
     annual_revenue: 224000,
     mens_apparel: false,
     womens_apparel: true
  )

  Store.create(
    name: "Whistler",
    annual_revenue: 1900000,
    mens_apparel: true,
    womens_apparel: false
  )

  Store.create(
    name: "Yaletown",
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true
  )

  @mens_stores = Store.where(mens_apparel: true)

  puts "Men's clothing stores:"
  @mens_stores.each do | store |
    puts "Name: #{store.name} - Annual revenue: #{store.annual_revenue}"
  end


  puts "Women's clothing stores ($1 000 000 or less in annual sales):"
  Store.where(womens_apparel: true).where("annual_revenue < 1000000").each do | store |
    puts "Name: #{store.name} - Annual revenue: #{store.annual_revenue}"
  end


end