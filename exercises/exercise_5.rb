require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@all_stores_revenue = Store.sum(:annual_revenue)
puts "Total revenu from all stores: #{@all_stores_revenue}"

#puts Store.sum("annual_revenue")
puts "Average total des revenu de tout les stores: #{Store.average(:annual_revenue)}"
#2way to wrote it
puts Store.where("annual_revenue > '1000000'").count()
