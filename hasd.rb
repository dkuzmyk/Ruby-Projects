class Point

  private varx
  private vary

  def initialize
    @varx = 0
    @vary = 0
  end

  def Point(a,b)
    @varx = a
    @vary = b
  end

  def return_x
    @varx
  end

  def return_y
    @vary
  end

  def Point::return_x(a)
    @varx = a
  end

  def Point::return_y(a)
    @vary = a
  end

  def slope(point,fn)
    y1 = fn.apply(@varx)
    y2 = fn.apply(point.new.return_x)
    ret_val = (y2-y1)/(point.new.return_x-@varx)
    return ret_val
  end

  def distance(pt)

    puts "Calling Point.distance(). "

    dist_x = @x - pt.x

    dist_y = @y - pt.y

    ret_value = Math.sqrt(dist_x*dist_x + dist_y*dist_y)

    return ret_value
  end
end

def main
  obj1 = Point.new
  obj2 = Point(3,4).new

  puts "Distance between 2D points is: "
  obj1.distance(obj2)

  puts "Slope between pt2 and pt1 is "
  obj1.slope(obj2, {|x| x*x})

end
