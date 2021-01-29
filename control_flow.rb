class ControlFlow

  # leap_year? as a class method
  def ControlFlow.leap_year? year
    if year % 4 != 0
      return 0
    elsif year % 100 != 0
      return 1
    elsif year % 400 != 0
      return 0
    else
      return 1
    end
  end

  # leap_year? as an instance method
  # No conflict with class method
  def leap_year? year
    unless year % 4 == 0
      return 0
      end
    unless year % 100 == 0
      return 1
      end
    unless year % 400 == 0
      return 0
    else
      return 1
    end
  end

  # Compute leap year with case statement
  def leap_year_case? year
    case true
    when (year % 4) != 0 then
      return 0
    when (year % 100) != 0
      return 1
    when year % 400 == 0
      return 1
    else
      return 0
    end
  end
end

# calling class method
puts "Class method call: #{ControlFlow.leap_year? 2000}."

a = ControlFlow.new
# calling instance method
puts "Case statement: #{a.leap_year_case? 2100}."


# Example of while modifier
i = 0
array = [10, 20, 30]
total = 0
begin
  total += array[i]
  i += 1
end while i < array.size
puts "While modifier: #{total}."

# Iteration over collection
total = 0
for elem in array
  total += elem
end
p total

total = 0
[10, 20, 30].each {| x | total += x}
p "total with .each #{total}."

def Object.minMax array
  maxValue = -1000
  minValue = 1000
  i = 0
  while i < array.size
    if array[i] > maxValue
      maxValue = array[i]
    end
    if array[i] < minValue
      minValue = array[i]
    end
    i += 1
  end
  maxValue
end
c = Hash.new
p c.class
p c.class.superclass
p (0...2).class
p "Calling map #{[3, 6, 9].map {|x| x.odd?}}."
p (0...4).collect {|x| 2 * x}
p [3, 6, 9].collect.with_index {|x, c| x * (c + 1)}
p [3, 6, 9, 12].reject {|x| x.odd?}
p (ObjectSpace.each_object(Class).select { |klass| klass < Object }).inspect
puts Time.new.inspect

p Object.minMax([10, 100, -20, 14, -100, 0])