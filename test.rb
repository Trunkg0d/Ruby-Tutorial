class Parent
    private
        def private_method
            puts "Private method"
        end
end

class Child < Parent
    self.private_method
end

c = Child.new
