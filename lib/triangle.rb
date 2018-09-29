class Triangle


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    #if @a + @b || @a + @c || @b + @c > @a || @b || @c
      #begin
        #raise TriangleError
      #rescue TriangleError => error
        #puts error.message
      #end
    :equilateral if @a == @b && @a == @c && @b == @c
    :isosceles if @a == @b || @a == @c || @b == @c
    :scalene if @a != @b && @a != @c && @b != @c

    end
  end

  class TriangleError < StandardError
  end

end
