#Ruby Parallel Assignment

a = 10
b = 20
c = 30

#or
a, b, c = 10, 20, 30

#-------------------------------------------------------------------------------------------------------------#

#Parallel assignment is also useful for swapping the values held in two variables
a, b = b, c

#ex:
a=1
b=2
print "a is: ",a," b is: ",b
a,b=b,a 
puts
print "a is: ",a," b is: ",b
puts
#RUBY DEFINED

#defined? là một toán tử đặc biệt có hình thức của một cuộc gọi phương thức để xác định xem biểu thức được truyền có được xác định hay không. Nó trả về một chuỗi mô tả của biểu thức hoặc nil nếu biểu thức không được xác định.

#Usage 1
defined? variable # True if variable is initialized

#Ex:
foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil (undefined)
#---------------------

#Usage 2
defined? method_call # True if a method is defined

#Ex:
defined? puts        # => "method"
defined? puts(bar)   # => nil (bar is not defined here)
defined? unpack      # => nil (not defined here)
#---------------------

#Usage 3
# True if a method exists that can be called with super user
defined? super

#Ex:
defined? super     # => "super" (if it can be called)
defined? super     # => nil (if it cannot be)
#---------------------

#Usage 4
defined? yield   # True if a code block has been passed

#Ex:
defined? yield    # => "yield" (if there is a block passed)
defined? yield    # => nil (if there is no block)
#----------------------------------------------------------------------------------------#

#Ruby Dot "." and Double Colon "::" Operators

#Example1
MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant
puts

#Example2
CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST