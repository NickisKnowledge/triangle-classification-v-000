# hint: each side must be larger than 0 & two sides added together are always > then the 3rd side

class TriangleError < StandardError
end

class Triangle
  # write code here
  
  attr_accessor :a, :b, :c
  
  def initialize(side_1, side_2, side_3)
		@a = side_1
		@b = side_2
		@c = side_3
	end
	
	def kind
		if !triangle?
			# don't escape b/c don't want code to continue if error occur
				raise TriangleError
		else
			case [@a, @b, @c].uniq.size
				when 1 then :equilateral
				when 2 then :isosceles
				else :scalene
			end
		end
	end
	
	def triangle?
		#side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2 + side_3 > side_1
			@a + @b > @c && @a + @c > @b && @b + @c > @a
	end
end