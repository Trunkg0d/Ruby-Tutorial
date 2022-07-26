class Person
    private
        @name
        @age
        @address
    public
        def initialize(name, age, address)
            @name = name.to_s
            @age = age.to_i
            @address = address.to_s
        end
        
        def setName(name)
            @name = name.to_s
        end

        def getName
            return @name
        end

        def setAge(age)
            @age = age.to_i
        end

        def getAge
            return @age 
        end

        def setAddress(address)
            @address = address.to_s
        end

        def getAddress
            return @address
        end

        def display
            puts "Name: #{@name}"
            puts "Age: #{@age}" 
            puts "Address: #{@address}" 
        end
end

class Student < Person
    private
        @gpa
    public
        def initialize(name,age, address,gpa)
            super(name,age,address)
            @gpa=gpa.to_f
        end

        def setGpa(gpa)
            @gpa = gpa.to_f
        end

        def getGpa
            return @gpa
        end

        def display
            super.display()
            puts "GPA: #{@gpa}"
        end
end

class Teacher < Person
    private
        @salary
    public
        def initialize(name, age, address, salary)
            super(name,age,address)
            @salary = salary.to_i
        end

        def setSalary(salary)
            @salary = salary.to_i
        end

        def getSalary
            return @salary
        end

        def display
            super.display()
            puts "Salary: #{@salary}"
        end
end

s = Student.new("Khanh", 23, "Ha Noi", 9.0)
s.display()
t = Teacher.new("Tung", 34, "Ha Noi", 1700)
t.display()

