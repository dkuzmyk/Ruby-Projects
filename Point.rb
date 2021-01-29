
class Point
  @@tally = 0;

  def initialize(i, j)
    @x, @y = i, j
    @@tally += 1
  end

  def get_x
    @x
  end

  def get_y
    @y
  end

  def Point.get_tally
    @@tally
  end

  def x(new_x)
    @x = new_x
    self
  end

  def y(new_y)
    @y = new_y
    self
  end

  def distance(other)
    diff_x = other.get_x - @x
    diff_y = other.get_y - @y
    $global = 1000
    Math.sqrt(diff_x * diff_x + diff_y * diff_y)
  end

  def to_s
    "x = #{get_x}; y = #{@y}."
  end
end

p1 = Point.new(0,0)
puts p1
p1.x(3); p1.y(6)
puts p1
p2 = Point.new(0, 0)
p2.x(0).y(2)
puts Point.get_tally
puts p2
# puts p1.distance(p2)
puts $global
