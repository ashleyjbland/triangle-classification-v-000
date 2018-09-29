class Triangle


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    TriangleError if @a + @b > @c || @a + @c > @b || @a <= 0 || @b <= 0 || @c <= 0
    :equilateral if @a == @b && @a == @c && @b == @c
    :isosceles if @a == @b || @a == @c || @b == @c
    :scalene if @a != @b && @a != @c && @b != @c

    end
  end

  class TriangleError < StandardError
  end

end
