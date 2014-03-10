class Triangle
  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def is_triangle?
    @sideA + @sideB > @sideC && @sideA + @sideC > @sideB && @sideB + @sideC > @sideA
  end

  def triangle_type
    result=""
    if self.is_triangle?
      if @sideA == @sideB && @sideA == @sideC
        result = "an Equilateral"
      elsif @sideA == @sideB || @sideA == @sideC || @sideB == @sideC
        result = "an Isosceles"
      else
        result = "a Scalene"
      end
    else
        result = "numbers that do not form a triangle."
    end
    return result
  end
end
