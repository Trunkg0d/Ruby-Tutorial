#Creating Hashes
months = Hash.new

#--------------------------------------------------------------------------------------------------------------------------------

#You can also use new to create a hash with a default value, which is otherwise just nil −

months = Hash.new("month")

#When you access any key in a hash that has a default value, if the key or value doesn't exist, accessing the hash will return the default value −

#ex:
puts "#{months[0]}"         #==>month
puts "#{months[72]}"        #==>month
puts

#--------------------------------------------------------------------------------------------------------------------------------

H = {"a" => 100, "b" => 200}

puts "#{H['a']}"
puts "#{H['b']}"
puts

#or
K = Hash["a" => 100, "b" => 200]

puts "#{K['a']}"
puts "#{K['b']}"
puts

#--------------------------------------------------------------------------------------------------------------------------------

#Hash Built-in Methods
months = {"1" => "January", "2" => "February"}

keys = months.keys
values = months.values
puts "#{keys}"
puts "#{values}"

#Select

trans = {"car"=>1000, "motor"=>2000, "plane"=>3000, "bike"=>300}

h = trans.select {|key, value|
    key == "car" || key == "motor"
}
puts "#{h}"
puts

#ex2:
# declaring Hash value
a = { "a" => 100, "b" => 200 }

# declaring Hash value
b = {"a" => 100}

# declaring Hash value
c = {"a" => 100, "c" => 300, "b" => 200}


# select Value
v = a.select{|k,v|
    v>100
}

puts "#{v}"
