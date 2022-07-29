class Person
    private
        def sayHi
            puts "Hello #{self.class.name}!"
        end
    public
        def initialize
            sayHi()
        end
end

person = Person.new
# person.sayHi() NoMethodError
