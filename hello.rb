a={"Car":123,"Motor":456,"Plane":789}
b=[1,2,3,"dasf","t4wea","[]"]
for i in 0..b.length
    puts b[i]
end

a[:"Bike"]=12
puts a

a.each do |key,val|
    puts key.to_s + ": " + val.to_s
end