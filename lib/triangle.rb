class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    sides = [@side_one, @side_two, @side_three]
    if sides.uniq.size == 1
      :equilateral
    elsif sides.uniq.size == 2
      :isosceles
    end
  end
end

class TriangleError < StandardError

end
