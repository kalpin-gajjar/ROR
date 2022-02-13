h1 = {name: "Aron", email: "ar@gmail.com", gender: "male", age: 30}
h2 = Hash[a: 1, b: 2, c: 3, d: 4]
h3 = Hash.new # or {} or Hash[]

# accessing elements of hash
h1[:name]
h1[:age]
h2[:c]
h2[:a]

# create or update a Hash value 
h1[:no] = 1234567890
h2[:e] = 5

# delete a Hash entry
h2.delete(:e)

# modifying a Hash key
a1 = ['a', 'b']
a2 = ['c', 'd']
h3[a1] = 0
h3[a2] = 1
h3.include?(a1) # => true
a1[0] = 'z'
h3.include?(a1) # => false
h3.rehash
h3.include?(a1) # => true

# default values
h4 = Hash.new(-1)
h4.default = 0

#compare_by_identity
k1 = 'a'
k2 = 'a'
h4[k1] = 0
h4[k2] = 1
p h4
h4.compare_by_identity
h4[k1] = 0
h4[k2] = 1
p h4

# any?
h1.any?([:name, "Aron"])
h2.any?([:a, 1])
h2.any? {|key, value| value > 3}

# empty?
h5 = Hash[]
h1.empty?
h3.empty?
h5.empty?

# eql?
h6 = Hash[a: 1, b: 2, d: 4, c: 3]
h1.eql? h2
h2.eql? h6

# hash
h1.hash
h2.hash
h6.hash
h2.hash == h6.hash

# has_key? , key?, member?, include?
h1.has_key?(:name)
h2.has_key?(:e)
h1.key?(:name)
h2.member?(4)
h3.include?(a2)

# has_value?, value?
h1.has_value?('female')
h2.has_value?(4)
h1.value?('female')
h2.value?(4)


# length, size
h1.length
h3.length
h4.length
h1.size
h5.size
h2.size

# comparing methods
h6[:e] = 5
h2 < h6
h6 < h2
h6 > h2
h6 >= h2
h6.delete(:e)
h2 < h6
h2 <= h6
h2 == h6

# assoc(key) 
h1.assoc(:name)
h2.assoc(:e)

# dig
h1[:hash] = h2
h1.dig(:hash, :b)
h1.delete(:hash)

# fetch
h1.fetch(:gender)
h1.fetch(:fullname, :default)
h1.fetch(:fullname) {|key| "No key #{key}"}

# fetch_values
h2.fetch_values(:a, :c, :d)

# key
h1.key("Aron")
h2.key(5)

# keys
h1.keys
h2.keys
h3.keys 

# rassoc
h1.rassoc('female')
h2.rassoc(2)

# values
h1.values
h2.values

# values_at
h1.values_at(:name, :gender)
h2.values_at(:a, :c ,:d)

# assigning methods
h2.store(:e, 5)
h1.merge(h2) # does not change an original hash
h1.merge(h2, h3) # does not change an original hash
# h1.merge!(h2, h3) => changes an original hash 
h6.replace({'1': 'a', '2': 'b', '3': 'c', '4': 'd'})

# deleting methods
h6.clear
h6[:a] = 1
h6[:b] = nil
h6[:c] = 1
h6[:d] = nil
h6.compact # does not change an original hash
# h6.compact! => changes an original hash
h2.delete_if {|key, value| value > 4}
h2.select {|key, value| value < 4}# does not change an original hash
# h2.select! {|key, value| value < 4} => changes an original hash
h2.keep_if {|key, value| value < 4}
h2.reject {|key, value| value > 1} # does not change an original hash
# h2.reject! {|key, value| value > 1} => changes an original hash
h1.slice(:name, :gender, :age, :no)

# iterating methods
h1.each_pair {|key, value| p "#{key}: #{value}"}
h1.each_key {|key| p key}
h1.each_value {|value| p value}

# transforming Keys and Values
h6.transform_keys('a': :A, 'b': :B) # does not change an original hash
# h6.transform_keys!('a': :A, 'b': :B) => changes an original hash
h2.transform_values {|value| value * 10} # does not change an original hash
# h2.transform_values! {|value| value * 10} => changes an original hash
h2.invert