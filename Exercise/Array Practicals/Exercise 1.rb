numbers = [2,7,11,15]
result = 13

def indicesOfNums(numbers, result)
    (0...numbers.length).to_a.combination(2).to_a.select {|i, j| numbers[i] + numbers[j] == result}.flatten
end

p indicesOfNums(numbers, result)