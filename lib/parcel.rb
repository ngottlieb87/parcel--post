class Parcel
  def initialize(length, width, height, weight)
    @height = height
    @width = width
    @length = length
    @weight = weight
  end

  def volume
    dimensions = @height.to_i*@width.to_i*@length.to_i
  end

  def cost_to_ship
    price = volume*@weight.to_i
    price/78.125
  end
end
