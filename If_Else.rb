#IF ELSE STATEMENT
=begin

Syntax:

if conditional [then]
code...
[elsif conditional [then]
code...]...
[else
code...]
end

=end

#Ex:
x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end
puts

#Ruby unless Statement

=begin

Syntax:

unless conditional [then]
code
[else
code ]
end

=end

#Ex:
x = 1 
unless x>=2
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end
puts

#Ruby case Statement

=begin

Syntax:

case expression
[when expression [, expression ...] [then]
code ]...
[else
code ]
end

=end

#ex:
$age =  5
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end
puts