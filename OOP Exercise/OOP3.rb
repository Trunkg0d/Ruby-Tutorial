class Student
    def initialize(id, name, age, address, score)
        @id = id.to_i
        @name = name.to_s
        @age = age.to_i
        @address = address.to_s
        @score = score.to_i
    end

    def setId(id)
        @id = id.to_i
    end

    def getId()
        return @id
    end

    def setName(name)
        @name = name.to_s
    end

    def getName()
        return @name
    end

    def setAge(age)
        @age = age.to_i
    end

    def getAge()
        return @age
    end

    def setAddress(address)
        @address = address.to_s
    end

    def getAddress()
        return @address
    end

    def setScore(score)
        @score = score.to_i
    end

    def getScore()
        return @score
    end

end

s= Student.new(1001,"Trung",24,"Ha Noi",5)
puts s.getId()
puts s.getName()
puts s.getAge()
puts s.getAddress()
puts s.getScore()
s.setScore(7)
puts s.getScore()
s.setScore(10)
puts s.getScore()
puts