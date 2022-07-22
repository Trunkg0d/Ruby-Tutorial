#RUBY METHOD

=begin

Syntax:

def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
expr..
end

------------------------------------------------------------------------------

So, you can define a simple method as follows −

def method_name
expr..
end

------------------------------------------------------------------------------

You can represent a method that accepts parameters like this −

def method_name (var1, var2)
expr..
end

------------------------------------------------------------------------------
You can set default values for the parameters, which will be used if method is called without passing the required parameters −

def method_name (var1 = value1, var2 = value2)
expr..
end

=end

#ex:
def test(a1 = "Ruby", a2 = "Perl")
    puts "The programming language is #{a1}"
    puts "The programming language is #{a2}"
 end
 test "C", "C++"
 test
 test("C","C++")
 puts

 #Ruby Return Statement
 #ex:
 def test
    i = 100
    j = 200
    k = 300
 return i, j, k
 end
 var = test
 puts var
 puts

 #Giả sử bạn khai báo một phương thức lấy hai tham số, bất cứ khi nào bạn gọi phương thức này, bạn cần chuyển hai tham số cùng với nó.
 #Tuy nhiên, Ruby cho phép bạn khai báo các phương thức hoạt động với số lượng tham số thay đổi. 

 #ex:
 def sample (*test)
    puts "The number of parameters is #{test.length}"
    for i in 0...test.length
       puts "The parameters are #{test[i]}"
    end
 end
 sample "Zara", "6", "F"
 sample "Mac", "36", "M", "MCA"
 puts
 
 #Class methods
 class People
    def sayHi(name="No name")
        puts "Hello #{name}"
    end
    def Calculator()
        c=0
        puts "Input a"
        a=gets.chomp
        a=a.to_f
        puts a
        puts "Input b"
        b=gets.chomp
        b=b.to_f
        puts b
        puts "Input operator"
        operator=gets.chomp
        if operator=="+"
            c = a+b
        elsif operator=="-"
            c = a-b
        elsif operator=="*"
            c = a*b
        elsif operator=="/"
            c = a/b
        end
        return c
    end
end
trunk = People.new()
trunk.sayHi("Trung")

puts trunk.Calculator()
puts

#alias keyword
#Ruby cung cấp alias (bí danh) keyword để xử lý các alias của phương thức và thuộc tính

#Syntax 
#   alias method-name method-name
#   alias global-variable-name global-variable-name

#EX:
class User
    def fullname
       "Nam Dang"
    end
  
    alias username fullname
    alias name username
end
  
u = User.new
  
p u.fullname # => "Nam Dang"
p u.username # => "Nam Dang"
p u.name     # => "Nam Dang"
  
p