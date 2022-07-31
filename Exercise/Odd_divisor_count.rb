def divide(n)
    n=n.to_i
    dem = 0
    for i in 1..n
        if (n%i==0)
            dem+=1
        end
    end
    return dem
end

def count(a,b)
    dem =0
    for i in a..b
        if divide(i)%2!=0
            dem+=1
        else
            next
        end
    end
    return dem
end        

a = gets.chomp.to_i
b = gets.chomp.to_i
puts count(a,b)