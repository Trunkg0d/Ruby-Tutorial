#Class Definition
=begin
class Box
    code
end
box1 = Box.new
box2 = Box.new

=end

#The initialize Method
class Box
    def initialize(w,h)
       @width, @height = w, h
    end
end
puts
