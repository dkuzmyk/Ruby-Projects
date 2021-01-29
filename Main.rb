=begin
puts "enter value"
first_num = gets.to_i

puts "enter another value"
second_num = gets.to_i

puts "you entered " + first_num.to_s + ", " + second_num.to_s

float1 = 1.23
float2 = 2.12

multiline comment


test = 1231
test2 = 1131

puts test
puts "this is a string and test is: #{test}"
puts "new string test - test2 = #{test-test2}"

array1 = [1,2,3,4]
arrayString = %w[one two three]

puts array1
puts arrayString



list1 = %w[---- a b 3]
puts list1

list2 = list1.dup
puts list2

list1[2] = 'hhh'
puts list1
puts list2


list1 = [ "a", "b", ["c", "d"], ["e", "f"], "g" ]
list2 = list1.dup # Method dup shallow copies
list3 = list1.clone # Method clone deep copies
p list2 # returns ["a", "b", [3, "d"], ["e", "f"], "g"]
p list3 # still returns ["a", "b", ["c", "d"], ["e", "f"], "g"]
list1[2][0] = 3
p list2 # returns ["a", "b", [3, "d"], ["e", "f"], "g"]

p list3 # still returns ["a", "b", ["c", "d"], ["e", "f"], "g"]

list10 = [ "a", "b", ["c", "d"], ["e", "f"], "g" ]
list20 = Marshal.dump(list10) # Method dump performs marshalling
list20 = Marshal.load(list20) # Method load performs unmarshalling
list10[2][0] = 3
p list10 # returns ["a", "b", [3, "d"], ["e", "f"], "g"]
p list20 # still returns ["a", "b", ["c", "d"], ["e", "f"], "g"]



p 3.instance_of?(Numeric)
p 3.is_a?(Numeric)
p 3.class
p Integer.superclass

=end

