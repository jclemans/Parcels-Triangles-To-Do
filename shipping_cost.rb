require './lib/Parcels'

def package_inputs
  puts "Enter your package length in centimeters:"
  length = gets.chomp.to_f
  puts "Enter your package width in centimeters:"
  width = gets.chomp.to_f
  puts "Enter your package height in centimeters:"
  height = gets.chomp.to_f
  puts "Enter your package weight in kilos:"
  weight = gets.chomp.to_f

  new_parcel = Parcel.new(length, width, height, weight)

  puts "Cost = $#{new_parcel.cost_to_ship.price}"

end

package_inputs
