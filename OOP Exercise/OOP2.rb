class Circle
    def initialize(radius)
        @radius = radius.to_f
    end

    def getArea()
        return 3.14*@radius*@radius
    end

    def getCircumference()
        return 3.14*@radius*2
    end
end

circle = Circle.new(3.2)
puts circle.getArea()
puts circle.getCircumference()