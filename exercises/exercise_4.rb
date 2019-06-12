require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

@store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
@store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
@store3 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
@store4 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false )
@store5 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true )

@mens_stores = Store.where(mens_apparel: true)

#puts "Le decompte des stores: #{@mens_stores}"

@mens_stores.all.each do |store|
  puts "Store name: #{store.name} and annual revenue: #{store.annual_revenue} "
end  

#@women_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

@womens_stores = Store.where(womens_apparel: true)

@womens_stores.all.each do |store|
  if store.annual_revenue < 1000000
    puts "Store name: #{store.name} and annual revenue: #{store.annual_revenue} "
  end
end