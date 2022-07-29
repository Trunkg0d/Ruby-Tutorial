module Dog
    def bark
        puts "Bowl bowl"
    end

    def run
        puts "#{self.class.name} can run"
    end

    def priority
        puts "Im first"
    end
end

module Cat
    def scratch
        puts "Crake crake"
    end

    def run
        puts "#{self.class.name} can run"
    end
    
    def priority
        puts "Im second"
    end
end

class Doat
    include Cat
    include Dog

    def thinking(string)
        puts "#{self.class.name} is thinking about: #{string}!"
    end
end

doat = Doat.new
doat.scratch()
doat.bark()
doat.run()
doat.thinking("who am i, dog or cat ?")
doat.priority()