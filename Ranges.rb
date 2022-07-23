range1 = (1..5) #==> 1, 2, 3, 4, 5
range2 = (1...5) #==> 1, 2, 3, 4
range3 = ('a'..'d') #==> 'a', 'b', 'c', 'd'
range4 = ('a'...'d')

puts "#{range1.to_a}"
puts "#{range2.to_a}"
puts "#{range3.to_a}"
puts "#{range4.to_a}"
puts
#ex 
range5 = ('baa'..'bat').to_a
puts "#{range5.to_a}"
puts

#----------------------------------------------------------------------------------------------------------------------------
#Ranges implement methods that let you iterate over them and test their contents in a variety of ways −
digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5 }
puts "Rejected values are #{ret}"

digits.each do |digit|
   puts "In Loop #{digit}"
end
puts

#ex:
score = 70

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result
puts

#ex:

if ((1..10) === 5)
    puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
    puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
    puts "z lies in ('a'..'j')"
end