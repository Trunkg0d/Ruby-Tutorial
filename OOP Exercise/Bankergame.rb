class Banker
    private
    protected
        def balance
            return @balance 
        end

        def balance=(num)
            @balance = num
        end
    public
        def initialize
            @balance = rand(300).to_f
        end

        def WhoRich(other_person)
            if(self.balance < other_person.balance)
                puts "Ohh, you have little money"
            else
                puts "You rich :)))"
            end
        end

        def Steal(other_person)
            puts "Steal: "
            amount = gets.chomp.to_f

            if(amount > other_person.balance)
                puts "Your friend not rich :) don't steal him"
            else
                @balance += amount
                other_person.balance -= amount
                puts self.balance
                puts other_person.balance
            end
        end
end

p1 = Banker.new
p2 = Banker.new
p1.WhoRich(p2)
p1.Steal(p2)
