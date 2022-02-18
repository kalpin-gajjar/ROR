str = 'This is a String'

# Get The String Length
str.size
str.length

# Check If A String Is Empty
str.empty?

# String Interpolation
puts "Hello, #{str}" # allows us to combine strings together

# Extract a Substring
str[0, 4] # => "This"
str[10, 6] # => "String"
str[0..3] # => "This"
str[0...4] # => "This"
p str.slice(0, 4) # => "This"

# Find Out If a String Contains Another String
str.include?('is')
str.index('is')

# Pad a Ruby String
str.rjust(20, ' ')
str.ljust(20, ' ')

# Strings Case
str.downcase
str.upcase

# Trim a String & Remove White Space
str2 = '   String   '
str2.strip # remove the white space from both side
str2.rstrip # remove the white space from right side
str2.lstrip # remove the white space from left side

# String Prefix & Suffix
str.start_with?('This')
str2.start_with?('S')
str.end_with?('string')
str2.end_with?(' ')
str2.delete_prefix('   ')
str2.delete_suffix('   ')

# String to An Array 
str.split(' ')

# String Into An Integer
str3 = '5'
str3.to_i 

#If A String Is A Number
str.match?(/\A-?\d+\Z/)
str3.match?(/\A-?\d+\Z/)

# Append Characters
str3 << ' is'
str3 << ' a'
str3 << ' number'

# Iterate Over Characters Of a String
str.each_char {|i| puts i}
p str.chars # returns array of Characters

# Create Multiline Strings
str4 = <<-STRING
a
b
c
STRING
str5 = %Q{
1
2
3
}

# Replace Text Inside a String
str2.gsub('String', 'Str_var')

# Remove the Last Character From a String
str2.chomp('ing   ')

# Counting Characters
str.count('s')

# Reverse a String
str.reverse

# Trim a String
str4.strip

# Add a String before another String
str3.prepend('4 and ')

# Insert a String
str3.insert(1,', 6')