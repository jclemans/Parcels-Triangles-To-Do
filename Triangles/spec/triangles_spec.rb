require 'rspec'
require 'triangles'

describe Triangle do
  it 'initializes a new triangle with three sides' do
    test_triangle=Triangle.new("sideA", "sideB", "sideC")
    test_triangle.should be_an_instance_of Triangle
  end

  it 'returns "equilateral" for triangles with 3 equal sides' do
    test_triangle = Triangle.new(3, 3, 3)
    test_triangle.triangle_type.should eq "an Equilateral"
  end

  it 'returns "Isosceles" for triangles with 2 equal sides' do
    test_triangle = Triangle.new(2,2,3)
    test_triangle.triangle_type.should eq "an Isosceles"
  end

  it 'returns "Scalene" for triangles with no equal sides' do
    test_triangle = Triangle.new(4,5,6)
    test_triangle.triangle_type.should eq "a Scalene"
  end

  it 'returns "Not a Triangle" for values that do not make a triangle' do
    test_triangle = Triangle.new(1,1,12)
    test_triangle.triangle_type.should eq "numbers that do not form a triangle."
  end
end
