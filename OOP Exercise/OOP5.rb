class Account
    private
        @id
        @name
        @balance
    public
        def initialize(*args)
            if(args.length ==2)
                @id=args[0].to_i
                @name=args[1].to_s
            end

            if(args.length == 3)
                @id=args[0].to_i
                @name=args[1].to_s
                @balance=args[2].to_i
            end
        end

        def getId
            return @id
        end

        def setName(name)
            @name=name.to_s
        end

        def getName
            return @name
        end

        def getBalance
            return @balance
        end

        def deposit(amount)
            @balance+=amount
        end

        def withdraw(amount)
            if(@balance>=amount)
                @balance-=amount
            elsif
                puts "That amount exceeds your current balance.​"
            end
        end

        def display
            puts "Id: #{@id}" 
            puts "Name: #{@name}"  
            puts "Balance: #{@balance}"
        end
end

account1 = Account.new(1000, "Tuan", 2000)
account1.display()
account1.withdraw(2100)
account1.deposit(600)
puts account1.getBalance()
account1.withdraw(2100)
puts account1.getBalance()
