require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# @store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
# @store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
# @store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false )


@store1 = Store.first
@store2 = Store.find_by(id: 2)

@store1.update(name: 'Burnaby_new')