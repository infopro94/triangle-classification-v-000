class Triangle

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def kind
      sides = @a, @b, @c
      if @a <= 0 #addresses no size and negative size
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message_one
        elsif @a + @b <= @c #addresses inequality rule
          raise TriangleError
        rescue TriangleError => error
          puts error.message_two
        end

        if @a == @b && @a == @c
          :equilateral
        elsif @a == @b || @a == @c || @b == @c
          :isosceles
        else
          :scalene
      end
    # end
end

class TriangleError < StandardError
    def message_one
      "Illegal triangle, sides must be greater than zero"
    end

    def message_two
      "Illegal triangle, violates triangle inequality"
    end


  end
