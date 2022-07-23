=begin
Ruby gives you three levels of protection at instance methods level, which may be public, private, or protected. Ruby does not apply any access control over instance and class variables.

Public Methods − Public methods can be called by anyone. Methods are public by default except for initialize, which is always private.

Private Methods − Private methods cannot be accessed, or even viewed from outside the class. Only the class methods can access private members.

Protected Methods − A protected method can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.

=end

class Box
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end
 
    # instance method by default it is public
    def getArea
       getWidth() * getHeight
    end
 
    # define private accessor methods
    def getWidth
       @width
    end
    def getHeight
       @height
    end
    # make them private
    private :getWidth, :getHeight
 
    # instance method to print area
    def printArea
       @area = getWidth() * getHeight
       puts "Big box area is : #@area"
    end
    # make it protected
    protected :printArea
 end
 
 # create an object
 box = Box.new(10, 20)
 
 # call instance methods
 a = box.getArea()
 puts "Area of the box is : #{a}"
 
 # try to call protected or methods
 box.printArea()

=begin

Output:
Area of the box is : 200
test.rb:42: protected method `printArea' called for #
<Box:0xb7f11280 @height = 20, @width = 10> (NoMethodError)

=end