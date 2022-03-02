numbers = [0,0,1,1,1,2,2,3,3,4]

def uniqueElements(numbers)
    uniqArr = numbers.uniq
    finalArr = uniqArr + [nil] * (numbers.length - uniqArr.length)
end

p uniqueElements(numbers)