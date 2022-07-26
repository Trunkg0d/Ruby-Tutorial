# A class method is defined using def self.methodname(), 
# which ends with end delimiter and would be called using the class name as classname.methodname as shown in the following example

class Box
    # Initialize our class variables
    @@count = 0
    def initialize(w,h)
       # assign instance avriables
       @width, @height = w, h
 
       @@count += 1
    end
 
    def self.printCount()
       puts "Box count is : #@@count"
    end
 end
 
 # create two object
 box1 = Box.new(10, 20)
 box2 = Box.new(30, 100)
 
 # call class method to print box count
 Box.printCount()