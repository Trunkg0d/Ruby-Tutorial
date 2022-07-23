=begin

Mặc dù bạn có thể thêm chức năng mới trong một lớp dẫn xuất, 
nhưng đôi khi bạn muốn thay đổi hành vi của phương thức đã được xác định trong lớp cha. 
Bạn có thể làm như vậy chỉ đơn giản bằng cách giữ tên phương thức giống nhau và ghi đè chức năng của phương thức 
như được hiển thị bên dưới trong ví dụ -

=end

class Box
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end
    # instance method
    def getArea
       @width * @height
    end
 end
 
 # define a subclass
 class BigBox < Box
 
    # change existing getArea method as follows
    def getArea
       @area = @width * @height
       puts "Big box area is : #@area"
    end
 end
 
 # create an object
 box = BigBox.new(10, 20)
 
 # print the area using overriden method.
 box.getArea()