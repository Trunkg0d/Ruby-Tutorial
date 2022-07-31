def isSortedArray(a)
    for i in 0...a.length
        if i==a.length-1
            return true
        else 
            if a[i]<=a[i+1]
                next
            else
                return false
            end
        end
    end
    return true
end

puts isSortedArray([6, 32, 17, 24, 11, 43, 26, 34, 48, 15])