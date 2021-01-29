class A
  def who
    "A"
  end
  def what
    "A"
  end
  def whom
    self.who
  end
end

class B < A
  def who
    "B"
  end
  def what
    super
  end
  def whom
    super
  end
end

class C < B
  def who
    "C"
  end
end

instB = B.new
instC = C.new
puts instB.who
puts instC.who
puts instB.what
puts instC.what
puts instB.whom
puts instC.whom


