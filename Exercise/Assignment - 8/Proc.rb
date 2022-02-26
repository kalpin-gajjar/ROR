proc1 = Proc.new {puts "This is a Proc!"}
proc1.call

proc2 = Proc.new {|i| puts i ** 2}
proc2.call(2)

proc3 = Proc.new {|i, j| puts i * j}
proc3.call(2, 5)

proc4 = Proc.new {|i, j| puts "It can also run if we don't pass arguments!"}
proc4.call