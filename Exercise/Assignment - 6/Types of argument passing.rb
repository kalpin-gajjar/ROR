# Standard Arguments
def sum(num1, num2)
    num1 + num2
end
p sum(5, 5)

# providing a default value
def area(length = 10, breadth = 5)
    length * breadth
end
p area
p area(5)
p area(5, 10)

# Keyword Arguments
def volume(length:, breadth:, height:)
    length * breadth * height
end
p volume(breadth: 10, length: 10, height: 10)

#Variable Arguments
def temp1(a, *b)
    p b
end
temp1(1, 2, 3, 4, 5)

def temp2(a, **b)
    p b
end
temp2(1, b:2)

# Catch-All Argument
class A
    def div(num1, num2)
        p num1 / num2
    end
end

class B < A
    def div(*)
        super
    end
end

b = B.new
b.div(10, 5)