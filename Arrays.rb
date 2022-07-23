#Creating new Array
names= Array.new

#You can set the size of the array
names = Array.new(20)

#Size or length of the array
names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20
puts

#You can assign a value to each element in the array as follows −
names = Array.new(4,"Trung")
puts "#{names}"
puts
#Output: ["Trung", "Trung", "Trung", "Trung"]

digits = Array(0..9)
puts "#{digits}"
puts
