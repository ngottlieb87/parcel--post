require('rspec')
require('pry')
require('parcel')

describe('Parcel') do
  describe('#volume') do
    it('will calculate the volume, given three dimensions') do
      expect(Parcel.new(5,5,5,5).volume).to(eq(125))
    end
  end
  describe('#cost_to_ship') do
    it('will calculate the cost, given the volume and weight') do
      expect(Parcel.new(5,5,5,5).cost_to_ship).to(eq(8))
    end
  end
end
