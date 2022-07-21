#STRING LITERAL

=begin
Ruby strings are simply sequences of 8-bit bytes and they are objects of class String. Double-quoted strings allow substitution and backslash notation but single-quoted strings don't allow substitution and allow backslash notation only for \\ and \'
=end

puts 'escape using "\\"';
puts 'That\'s right';
puts

#You can substitute the value of any Ruby expression into a string using the sequence #{ expr }. Here, expr could be any ruby expression.

puts "Multiplication Value : #{24*60*60}";
puts

#RUBY ARRAY

ary = [  "fred", 10, 3.14, "This is a string", "last element", ];

ary.each do |i|
    puts i
end
puts

#RUBY HASHES
hsh = {"Roses"=>"Red", "Violet"=>"Blue"}

hsh.each do |key,value|
    puts ("#{key} are #{value}")
end

puts

#or

hsh1 = {"Sugar is":"Sweet", "And so":"Are You"}

hsh1.each do |key,value|
    puts ("#{key} #{value}")
end
puts

#or

price = {"Car":10000, "Motor":8000, "Plane":100000}

price.each do |key,value|
    puts ("#{key} : #{value}")
end
puts

#RUBY RANGE

#A range (1..5) means it includes 1, 2, 3, 4, 5
(10..15).each do |n| 
    print n, ' ' 
 end
 puts

 #A range (1...5) means it includes 1, 2, 3, 4 values.
 (10...15).each do |n| 
    print n, ' ' 
 end
 puts