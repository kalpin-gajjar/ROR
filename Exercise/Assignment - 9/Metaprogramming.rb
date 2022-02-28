# Send method

class Temp

    attr_accessor :name, :surname

    def sum(num1, num2)
       puts num1 + num2
    end

    def printData
        puts "Full Name: #{name} #{surname}"
    end

end

t1 = Temp.new

t1.send("sum", 5, 5)
t1.send("name=", "Kalpin")
t1.send("surname=", "Gajjar")
t1.send("printData")

class Emp

    attr_accessor :eId, :name, :salary

    def addData(value)
        value.each_pair do |k, v|
            self.send("#{k}=", v)
        end
    end
end

e1 = Emp.new

employees = {
    eId: 1,
    name: "Aron Finch",
    salary: 25000
}

e1.addData(employees)

p e1

# define_method

class Cars

    attr_accessor :name, :brand, :price

    def initialize(brand, name, price)
        @brand = brand
        @name = name
        @price = price
    end

    def self.create_method(name)
        define_method("#{name}_details") do
            puts "This is #{self.brand}'s #{self.name} car."
        end
    end
end

c1 = Cars.new("BMW", "x1", 4000000)
c2 = Cars.new("Ford", "mustand", 3500000)
c3 = Cars.new("Mercedes", "g63", 10000000)

Cars.create_method(c1.name)
Cars.create_method(c2.name)
Cars.create_method(c3.name)

c1.x1_details
c2.mustand_details
c3.g63_details

# method_missing

class Person

    def name
        puts "Name of a perosn"
    end

    def age
        puts "Age of a person"
    end

    def method_missing(methodName, *args, &block)
        puts "The #{methodName} method does not exist!"
    end

end

p1 = Person.new

p1.name
p1.age
p1.gender

# class_eval

class Demo1
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
    end
end

d1 = Demo1.new(5, 5)

Demo1.class_eval do
    def sum
        puts @num1 + @num2
    end
end

d1.sum

# instance_eval

Demo1.instance_eval do
    def class_method
        puts "This is class method!"
    end
end
Demo1.class_method

# singleton method/class

class Mobile
    def spec
        puts "Every Mobile has screen, camera and speaker"
    end
end

m1 = Mobile.new
m2 = Mobile.new

def m2.spec
    puts "m2 mobile has screen, camera, speaker and finger print scanner."
end

m3 = Mobile.new

m1.spec
m2.spec
m3.spec