class Point
  @@tally = 0;
  def initialize(i, j)
    @x, @y = i, j
    @@tally += 1
  end

  def Point.tally
    @@tally
  end

  attr_accessor(:x, :y)

  def distance(other)
    diff_x = other.x - @x
    diff_y = other.y - @y
    Math.sqrt(diff_x * diff_x + diff_y * diff_y)
  end
  
  def to_s
    "Point(#{x}, #{@y})"
  end
end

p1 = Point.new(0,0)
p1.x=(3); p1.y=(6)
puts p1
p2 = Point.new(0, 0)
p2.x = 0; p2.y = 2
puts Point.tally
puts p2
puts p1.distance(p2)
