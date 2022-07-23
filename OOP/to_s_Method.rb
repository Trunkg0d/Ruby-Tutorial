class Box
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end
    # define to_s method
    def to_s
       "(w:#{@width},h:#{@height})"  # string formatting of the object.
    end
end
 
# create an object
box = Box.new(10, 20)
 
# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box}"
puts
#ex2:

class Container
    def initialize(name)
        @name = name
    end

    def to_s
        "Container initialized with name: #{@name}"
    end
end

container = Container.new("TrunkGod")
puts "#{container}"
puts