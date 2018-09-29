class Triangle
  

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if side1 + side2 || side1 + side3 || side2 + side3 > side1 || side2 || side3
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end
  end
  
end
