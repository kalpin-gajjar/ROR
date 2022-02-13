(0..10).to_a
(0...11).to_a # ... exclude the end value
('a'..'z').to_a
('a'...'z').to_a # ... exclude the end value
Range.new(0,10).to_a # same as (0..10).to_a

# rng == obj => true or false
(0..10) == Range.new(0,10)
(0..10) == (0...10)

# begin
(0..10).begin

# bsearch
arr = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
(0..10).bsearch {|i| arr[i] > 50}
(0..10).bsearch {|i| arr[i] > 90}

# cover?
(0..10).cover?(5)
(0..10).cover?(11)
('a'..'z').cover?('cc')
('a'...'z').cover?('z')

# each 
(0..10).each {|i| p i ** 2}

# first
(0..10).first
(1...10).first(5)

# last
p (0..10).last
p (1...10).last(5)

# end
(0..10).end
(0...10).end

# eql?
(0..10).eql?(Range.new(0,10))
(0..10).eql?(0...10)

# exclude_end?
(0..10).exclude_end?
(0...10).exclude_end?

# include?
(0..10).include?(5)
(0..10).include?(11)
('a'..'z').include?('cc')
('a'...'z').include?('z')

# max
(0..10).max
('a'..'z').max

# min
(0..10).min
('a'..'z').min

# size
(0..10).size
('a'..'z').to_a.size

# step
(0..10).step(2) {|i| p i}
(0..10).step(1.5) {|i| p i}