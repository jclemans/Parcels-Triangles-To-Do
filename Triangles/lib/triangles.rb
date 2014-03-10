class Triangle
  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def triangle_type
    result=""
    if @sideA == @sideB && @sideA == @sideC
      result = "Equilateral"
    elsif (@sideA == @sideB || @sideA == @sideC || @sideB == @sideC) && (@sideA + @sideB > @sideC && @sideA + @sideC > @sideB && @sideB + @sideC > @sideA)
      result = "Isosceles"
    elsif @sideA + @sideB > @sideC && @sideA + @sideC > @sideB && @sideB + @sideC > @sideA
      result = "Scalene"
    else
      result = "These three numbers do not form a triangle."
    end
    return result
  end
end
