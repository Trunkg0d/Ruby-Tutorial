class PasswordGame
    private
        def data
            puts "Hello, world!"
        end
    public
        def input
            @pass = gets.chomp
        end

        def password
            if @pass == "12345"
                data
            elsif
                puts "Wrong password, please try again"
            end
        end
end

p = PasswordGame.new
p.input()
p.password()