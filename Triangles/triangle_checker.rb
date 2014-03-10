require './lib/triangles'

def triangle_inputs
 puts 'Enter side A length'
 side_a = gets.chomp.to_i
 puts 'Enter side B length'
 side_b = gets.chomp.to_i
 puts 'Enter side C length'
 side_c = gets.chomp.to_i

 new_triangle = Triangle.new(side_a, side_b, side_c)

 puts "You've got yourself #{new_triangle.triangle_type}"

end

triangle_inputs
