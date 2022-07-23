=begin

Đôi khi, chúng tôi muốn ngăn chặn một đối tượng bị thay đổi. 
Phương pháp đóng băng trong đối tượng cho phép chúng ta làm điều này, biến một đối tượng thành một không đổi một cách hiệu quả. 
Bất kỳ đối tượng có thể được đóng băng bằng cách gọi Object.Freeze. 
Một đối tượng đóng băng có thể không được sửa đổi: bạn không thể thay đổi các biến thể hiện của nó. 
Bạn có thể kiểm tra xem một đối tượng đã cho đã bị đóng băng hoặc không sử dụng Object.frozen? 
Phương thức, trả về true trong trường hợp đối tượng bị đóng băng nếu không một giá trị sai là trả về. 

=end

class Box
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end
 
    # accessor methods
    def getWidth
       @width
    end
    def getHeight
       @height
    end
 
    # setter methods
    def setWidth=(value)
       @width = value
    end
    def setHeight=(value)
       @height = value
    end
 end
 
 # create an object
 box = Box.new(10, 20)
 
 # let us freez this object
 box.freeze
 if( box.frozen? )
    puts "Box object is frozen object"
 else
    puts "Box object is normal object"
 end
 
 # now try using setter methods
 box.setWidth = 30
 box.setHeight = 50
 
 # use accessor methods
 x = box.getWidth()
 y = box.getHeight()
 
 puts "Width of the box is : #{x}"
 puts "Height of the box is : #{y}"