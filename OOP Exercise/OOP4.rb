def pow(a,b)
    return a.to_f**b.to_f
end

class Point
    private
        @x 
        @y
    public
        def initialize(x, y)
            @x=x.to_f
            @y=y.to_f
        end
        
        def setX(x)
            @x=x.to_f
        end

        def getX()
            return @x
        end

        def setY(y)
            @y=y.to_f
        end

        def getY()
            return @y
        end

        def setXY(x, y)
            @x=x.to_f
            @y=y.to_f
        end

        def distance(*args)
            if(args.length==2)
                return Math.sqrt(pow(@x-args[0],2) + pow(@y-args[1],2))
            end
            if(args.length==1)
                return Math.sqrt(pow(@x-args[0].getX(),2) + pow(@y-args[0].getY(),2))
            end
        end
end

p1 = Point.new(1.5,6.7)
p2 = Point.new(2.8,3.2)
puts p1.distance(2.34,7.8)
puts p1.distance(p2)