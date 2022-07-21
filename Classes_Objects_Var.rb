

=begin

CLASSES AND OBJECTS

Data Encapsulation
Data Abstraction
Polymorphism
Inheritance

Variables in a Ruby Class
Ruby provides four types of variables −

Local Variables − Local variables are the variables that are defined in a method. Local variables are not available outside the method. You will see more details about method in subsequent chapter. Local variables begin with a lowercase letter or _.

Instance Variables − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.

Class Variables − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.

Global Variables − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always preceded by the dollar sign ($).

=end

#Instance Variables:

class Customer
	
    def initialize(id, name, addr)
        # Instance Variables	
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end
    
    # displaying result
    def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
    end
end
    
    # Create Objects
    cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
    cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
    
    # Call Methods
    cust1.display_details()
    cust2.display_details()
puts ""
puts ""

#Class Variables:
#!/usr/bin/ruby

class Customer
	
    # class variable
    @@no_of_customers = 0
    
    def initialize(id, name, addr)
        # An instance Variable
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end
    
    # displaying result
    def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
    end
    
    def total_no_of_customers()
        # class variable
        @@no_of_customers += 1
        puts "Total number of customers: #@@no_of_customers"
    end
end
    
    # Create Objects
    cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
    cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
    
    # Call Methods
    cust1.display_details()
    cust1.total_no_of_customers()
    cust2.display_details()
    cust2.total_no_of_customers()
puts ""
puts ""

#Global Variables:

$global_variable = 10
class Class1
    def print_global
        puts "Global variable in Class1 is #$global_variable"
    end
end
class Class2
    def print_global
        puts "Global variable in Class2 is #$global_variable"
    end
end
class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

#Ruby Constant

=begin

Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

=end
class Example
    VAR1 = 100
    VAR2 = 200
    def show
       puts "Value of first Constant is #{VAR1}"
       puts "Value of second Constant is #{VAR2}"
    end
 end
 
 # Create Objects
 object = Example.new()
 object.show

    
    
