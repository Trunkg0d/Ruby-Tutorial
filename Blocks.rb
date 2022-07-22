#Blocks

=begin

Syntax:

block_name {
statement1
statement2
..........
}

=end

#ex:
def test
    puts "You are in the method"
    yield
    puts "You are again back to the method"
    yield
end
test {puts "You are in the block"}
puts

#You also can pass parameters with the yield statement. Here is an example −
=begin

Ở đây, câu lệnh yield được viết theo sau là các tham số. Bạn thậm chí có thể vượt qua nhiều hơn một tham số. 
Trong khối, bạn đặt một biến giữa hai đường thẳng đứng (||) để chấp nhận các tham số. 
Do đó, trong mã trước, câu lệnh yield 5 chuyển giá trị 5 làm tham số cho khối thử nghiệm.

=end
#ex:

def test
    yield 5
    puts "You are in the method test"
    yield 100
end
test {|i| puts "You are in the block #{i}"}
puts

#If you want to pass more than one parameters, then the yield statement becomes −
#Syntax:
#   yield a, b
#   test {|a, b| statement}

#Ngoài ra bạn có thể nhét các block vào một đối số, ví dụ ta có block như sau:
#ex:
def test(&this_block)       #Ở đây, block chứa câu lệnh puts "Hello World!" đã được gán vào cho đối số this_block
    this_block.call
end
test { puts "Hello World!"}
puts

#BEGIN and END Blocks
BEGIN { 
    # BEGIN block code 
    puts "BEGIN code block"
 } 
 
END { 
    # END block code 
    puts "END code block"
}
    # MAIN block code 
puts "MAIN code block"

