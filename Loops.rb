#Ruby Loop
#Ruby while Statement

=begin
Syntax:

while conditional [do]
code
end

=end

#ex:

$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end
puts

#Ruby until Statement

=begin

Syntax:

until conditional [do]
code
end

=end

#ex:
$i = 0
$num = 5

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end
puts

#Ruby for statement

=begin

Syntax:

for variable [, variable ...] in expression [do]
code
end

=end

for i in 0..5 #0..5 means 0,1,2,3,4,5
    puts "Value of local variable is #{i}"
 end
 puts

for i in 0...5 #0...5 means 0,1,2,3,4
    puts "Value of local variable is #{i}"
end
puts

#Ruby break Statement
#ex:
for i in 0..5
    if i > 2 then
       break
    end
    puts "Value of local variable is #{i}"
 end
 puts

 #Ruby next Statement
 #ex:
 for i in 0..5
    if i < 2 then
       next
    end
    puts "Value of local variable is #{i}"
 end     
 puts

 #Ruby redo statement
 #ex:

=begin
 for i in 0..5
    if i < 2 then
       puts "Value of local variable is #{i}"
       redo
    end
 end

 =end
#This will produce the following result and will go in an infinite loop −
 puts 

#Ruby retry Statement

#Syntax Retry 
begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end

#Syntax Retry in Ruby iterator: 
for i in 1..5
   retry if some_condition # restart from i == 1
end

#ex:

=begin

for i in 0..5
   retry if i > 2
puts "Value of local variable is #{i}"
end

This will produce the following result and will go in an infinite loop −

=end