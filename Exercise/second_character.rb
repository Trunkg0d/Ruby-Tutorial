s ="coodddeeee"

chars = s.split("")
# puts chars
dict = {}
for i in chars
    if dict.key?(i)==false
        dict[i]=0
    end
end

for i in dict.keys
    s = chars.count(i)
    dict[i]=s
end
# puts "#{dict}"

maxi = dict.values.max

dict.each{|k,v|
    if v == maxi
        dict.delete(k)
    end
}
maxi = dict.values.max
dict.each{|k,v|
    if v == maxi
        $result = k
    end
}
puts $result