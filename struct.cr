struct Point
  property x, y

  def initialize(@x = 0, @y = 0); end

end

def increment_x(point, by amount)
  point.x += amount
  point
end

point = Point.new
increment_x(point, by: 100)
puts point.x
