class Triangle

    def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
    end

    def kind
      sides = @a, @b, @c
      if @a <= 0
        begin
          raise TriangleError if @a <= 0
        rescue TriangleError => error
          puts error.message_one
        elsif @a < 0 raise TriangleError
        rescue TriangleError => error
          puts error.message_two
        elsif @a + @b <= @c
      raise TriangleError  if @a < 0

      raise TriangleError, "Illegal triangle, violates triangle inequality" if @a + @b <= @c
      if @a == @b && @a == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end

end

class TriangleError < StandardError
    def message_one
      "Illegal triangle, sides must be greater than zero"
    end

    def message_two
      "Illegal triangle, sides cannot be negative"
    end

    def message_three

      #  sides = a, b, c
      #  raise TriangleError, "Illegal triangle, sides must be greater than zero" if a <= 0
      #  raise TriangleError, "Illegal triangle, sides cannot be negative" unless sides > 0
      #  raise TriangleError, "Illegal triangle, violates triangle inequality" if a + b <= c
     end

     end
# =======
#     def triangle(a,b,c) # raise TriangleError if @a < 0 || @b < 0 || @c < 0 || @a + @b <= @c
#     sides = [a, b, c].sort
#     raise TriangleError, "Invalid size #{sides[0]}" unless sides[0] > 0
#     raise TriangleError, "Impossible triangle" if sides[0] + sides[1] <= sides[2]
#     raise TriangleError, "Illegal triangle, sides cannot be negative" if sides[0..2] < 0
#     return [:scalene, :isosceles, :equilateral][ 3 - sides.uniq.size ]
#   #sum of 2 sides must exceed length of 3rd
# #   #each side must be >0
#     end
# end
# >>>>>>> 6d523736311dd070ed399e7ed8b37ada866773a1
