require 'rspec'
require 'Parcels'

describe Parcel do
  it 'is initialized with dimensions and weight' do
    test_parcel = Parcel.new(2, 3, 4, 1)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'returns the product of the sides' do
    test_parcel = Parcel.new(2,3,4,1)
    test_parcel.volume.should eq 24
  end

  it 'returns the cost of shipping based on volume and weight' do
    test_parcel = Parcel.new(1,2,3,4)
    test_parcel.cost_to_ship.should eq 5.00
  end
end
