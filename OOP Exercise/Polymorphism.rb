class Animal
    def Sound
        puts "Some sound"
    end
end

class Dog < Animal
    def Sound
        puts "Bowl Bowl"
    end
end

class Cat < Animal
    def Sound
        puts "Meow Meow"
    end
end

a = Animal.new
a.Sound()
d = Dog.new
d.Sound()
c= Cat.new
c.Sound()