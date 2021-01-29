class Queue
  attr_accessor(:elements, :size)
  def initialize
    @elements = []
    @size = 0
  end
  def enqueue(x)
    @elements << x
    @size += 1
    self
  end
  def dequeue
    if size > 0
      @size -= 1
      return @elements.shift
    end
  end
  def size
    return @size
  end

  # dup does a shallow copy of the receiver
  def dup
    copy = Queue.new
    copy.size = @size
    copy.elements = @elements
    copy
  end

  def clone
    copy = self.dup
    copy.size = self.size
    copy.elements = @elements.clone
    copy
  end

  def to_s
    return "ELements == #{@elements}; size == #{@size}."
  end
end

a = Queue.new
b = a.clone
a.enqueue(10)
a.enqueue(20)
a.enqueue(30)
puts a
puts a.dequeue
puts a
puts b
