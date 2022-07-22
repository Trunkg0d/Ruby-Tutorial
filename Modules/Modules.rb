$LOAD_PATH << '.'

=begin

Ở đây chúng tôi đang sử dụng $ load_path << '.' Để làm cho Ruby nhận thức được rằng các tệp bao gồm phải được tìm kiếm trong thư mục hiện tại. 
Nếu bạn không muốn sử dụng $ load_path thì bạn có thể sử dụng yêu cầu_relative để bao gồm các tệp từ thư mục tương đối.

=end

require 'Module1.rb'

class Calculator
    
    include Module1
    def Input()
        @@a=gets.chomp
        @@a.to_f
        @@b=gets.chomp
        @@b.to_f
    end

    def CalAdd()
        self.Input()
        Module1.add(@@a,@@b)
    end

    def CalMinus()
        self.Input()
        Module1.minus(@@a,@@b)
    end

    def CalTime()
        self.Input()
        Module1.time(@@a,@@b)
    end

    def CalDivide()
        self.Input()
        Module1.divide(@@a,@@b)
    end
end

cal = Calculator.new
cal.CalAdd()
cal.CalMinus()
cal.CalTime()
cal.CalDivide()





