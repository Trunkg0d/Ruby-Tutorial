class Person
    private
        @name
        @age
        @address
    public
        attr_accessor :name, :age, :address

        def initialize(name, age, address)
            @name = name.to_s
            @age = age.to_i
            @address = address.to_s
        end

        def display
            puts "Name: #{name}"
            puts "Age: #{@age}"
            puts "Address: #{@address}"
        end

end

class Student < Person
    private
        @gpa
    public
        attr_accessor :gpa
        def initialize(*args)

            if(args.length==4)
                super(name,age, address)
                @gpa = gpa.to_f
            end
        end

        def display
            super.display()
            puts "GPA: #{@gpa}"
        end
end

s = Student.new
s.name = "Trung"
s.age = 19
s.address = "My Tho, Tien Giang"
s.gpa = 9.3

s.display()