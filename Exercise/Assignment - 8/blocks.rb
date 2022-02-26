# blocks

arr = [1, 2, 3, 4, 5]


arr.each {|i| puts i}

arr.each do |i|
    puts i
end


p arr.map {|i| i**2}

p(arr.map do |i|
    i**2
end)


p arr.select {|i| i < 4}

p(arr.select do |i|
    i < 4
end)


p arr.reject {|i| i < 4}

p(arr.reject do |i|
    i < 4
end)

# yield Keyword
def temp1
    yield
end
temp1 { puts "Block is called by yield keyword!"}

def temp2
    yield
    yield
end
temp2 {puts "Using yield multiple times."}

def temp3
    yield 2
end
temp3 {|i| puts i ** 2}

def temp4
    yield 2, 5
end
temp4 {|i, j| puts i * j}

def temp5(&block_name)
    block_name.call
end
temp5 {puts "Using Explicit block."}