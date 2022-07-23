#Ruby each Iterator
arr = [1,2,3,4,5]
arr.each do |i|
    puts "#{i}" 
end
puts
#Ruby collect Iterator
#Syntax: collection = collection.collect
a = [1,2,3,4,5]
b = Array.new
b = a.collect{|i| i}
puts b
puts

c=a.collect{|i| 10*i}
puts c
puts