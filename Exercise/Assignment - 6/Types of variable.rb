# Ruby Variable Types
# global variable ($temp)
# instance variable (@temp)
# class variable (@@temp)
# local variable (temp)
# constant (TEMP)

$globalVariable = 10
CONSTANT = 25

class A

    @@classVariable = []

    attr_reader :instanceVariable
    def initialize(instanceVariable)
        @instanceVariable = instanceVariable
        @@classVariable.push(instanceVariable)
    end

    def temp
        localVariable = 5
        p localVariable
        p $globalVariable    
    end

    def print_var
        p @@classVariable
    end

end

a1 = A.new(15)
a2 = A.new(30)
a3 = A.new(35)

a1.temp # => 5 10
puts a1.instanceVariable # => 15
a1.print_var # => [15, 30, 35]
a2.print_var # => [15, 30, 35]
a3.print_var # => [15, 30, 35]