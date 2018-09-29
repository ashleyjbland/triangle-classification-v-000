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
    if @a == @b && @a == @c && @b == @c
      :equilateral
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "Your triangle is illegal!"
    end
  end

end
