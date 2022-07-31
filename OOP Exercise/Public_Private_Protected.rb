class Methodd
    public 
    def initialize
        method_protected
        method_private
    end

    def method_public
        puts "This method is public"
    end

    def getProtected
        return self.method_protected
    end

    def getPrivate
        return method_private
    end

    private
        def method_private
            puts "This method is private"
        end
    

    protected
        def method_protected
            puts "This method is protected"
        end
    
end

class SubMethodd < Methodd
    def initialize
    end

    def callback_private
        method_private()
    end

    def callback_protected 
        method_protected()
    end
end

sm = SubMethodd.new()
sm.callback_private
sm.callback_protected
sm.method_private