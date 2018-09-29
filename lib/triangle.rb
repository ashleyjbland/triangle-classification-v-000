class Triangle


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b || @a + @c || @b + @c > @a || @b || @c
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif @a == @b && @a == @c && @b == @c
      :equilateral
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end
  end

end
