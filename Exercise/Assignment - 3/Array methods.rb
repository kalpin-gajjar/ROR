arr1 = [1,2,3,4,5]
arr2 = Array.new(5) {|i| i.to_s}

# accessing elements of array
arr1[2]
arr1[-1]
arr1[2,3]
arr1[1..3]
arr1[1...3]
arr1.at(3)
arr1.fetch(5, "out of index")
arr1.first
arr1.last
arr1.take(2)
arr1.drop(3)

# obtaining number of elements array contains
arr2.length
arr2.size
arr2.count

# adding elements to an array
arr1.push(6)
arr2 << "5"
arr1.unshift(-1)
arr1.insert(1, 0)
arr2.insert(2, 'Two', 'Three', 'Four')

# removing elements from an array
arr1.pop
arr1.shift
arr2.delete_at(3)
arr2.delete("Two")
arr2.delete("Four")

# remove nil values from an array
arr3 = [0, "1", 2, nil, nil, 5, nil]
arr3.compact # does not remove nil values from an original array
arr3.compact! # remove nil values from an original array

# iterating over array
arr1.each {|i| p i**2}
arr2.reverse_each {|i| p i}
arr1.map {|i| i**2} # does not change an original array
arr1.map! {|i| i**2} # changes an original array

# selecting elements from an array
arr1.select {|i| i < 10} # non-destructive
arr1.reject {|i| i < 10} # non-destructive
arr1.drop_while { |i| i < 10} # non-destructive
# arr1.select! {|i| i > 0} => destructive
# arr2.reject! {|i| i.to_i < 1} => destructive
arr1.keep_if {|i| i > 0 } # destructive
arr2.delete_if {|i| i.to_i < 1} # destructive

# intersection
arr1 & arr3
arr2 & arr3

# repetition
arr1 * 2
arr1 * ' '

# concatenation
arr1 + arr2

# difference
arr2 - arr3

# comparison
arr1 <=> arr2
arr1 <=> arr3
arr3 <=> arr1

# equality
arr1 == arr2

# assoc(obj)
arr4 = [arr3, arr2, arr1, 7, "8"]
arr4.assoc(0)

# bsearch
arr1.bsearch {|i| i > 10}
arr1.bsearch {|i| i > 5}

# removes all elements from an array
arr4.clear

# collect
arr2.collect {|i| i + ".0"} # does not change an original array
# arr2.collect! {|i| i + ".0"} => changes an original array

# combination
arr1.combination(1).to_a
arr1.combination(2).to_a
arr1.combination(3).to_a
arr1.combination(4).to_a
arr1.combination(5).to_a
# repeated_combination => gives epeated_combination

# cycle
arr2.cycle(2) {|i| puts i}

# dig
arr5 = [arr1, arr2, arr3]
arr5.dig(1,3)

# empty?
arr2.empty?
arr4.empty?

# fill
arr3.fill(0)
arr3.fill(5, 1, 3)
arr3.fill(2, 1..2)
arr3.fill("1", 1..1)

# index
arr1.index(5)
arr2.index("4")

# flatten
arr5.flatten # does not change an original array
# arr5.flatten!() => changes an original array

# include
arr1.include?(5)
arr2.include?("1")

# replace
arr4.replace(['a', 'b', 'c', 'd'])

# join
arr4.join
arr4.join('-')

# max
arr1.max(2)
arr2.max
arr4.max

# min
arr1.min(2)
arr2.min
arr4.min

# minmax
arr1.minmax

# permutation
arr1.permutation.to_a
arr1.permutation(1).to_a
arr1.permutation(2).to_a
arr1.permutation(3).to_a
arr1.permutation(4).to_a
# repeated_permutation => gives repeated_permutation

# product
arr1.product(arr2)

# rindex
arr3.push("1")
arr3.index("1")
arr3.rindex("1")

# rotate
arr1.rotate # does not change an original array
arr1.rotate(2) 
#arr1.rotate! => changes an original array

# sample
arr2.sample
arr2.sample(3)

# shuffle
arr3.shuffle # does not change an original array
#arr3.shuffle! =>changes an original array

#sort
arr6 = [5 , 6, 3, 4, 8, 9, 2, 1]
arr6.sort # does not change an original array
arr6.sort.reverse
#arr6.sort! =>changes an original array

# sum
arr1
arr1.sum
arr1.sum {|i| i**0.5}

# union
arr1.union(arr2)
arr1 | arr2

#uniq
arr3.uniq # does not change an original array
# arr3.uniq! =>changes an original array

# values_at
arr1.values_at(3,4,5)

# zip
arr1.zip(arr2, arr3)