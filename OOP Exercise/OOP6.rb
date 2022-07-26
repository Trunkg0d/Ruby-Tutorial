class Person
    private
        @name
    public
        def getName
            return @name 
        end

        def setName(name)
            @name = name
        end
end

class Student < Person
end

s = Student.new
s.setName("Tuan")
puts s.getName()


