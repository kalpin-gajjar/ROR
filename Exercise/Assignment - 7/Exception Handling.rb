# NoMemoryError
begin
    a = 1<<10000000000000
    puts "Calculated answer somehow"
rescue NoMemoryError => e
    puts e
end

# LoadError
begin
    require 'temp/file'
rescue LoadError => e
    puts e
end

# SyntaxError
begin
    eval("1+2=3")
rescue SyntaxError => e
    puts 'Syntax Error'
end

# SignalException
begin
    Process.kill('HUP',Process.pid)
    sleep # wait for receiver to handle signal sent by Process.kill
rescue SignalException => e
    puts "received Signal Exception"
end

# StandardError
def temp
    raise "oops"
end
temp rescue puts "Standard Error"

# ArgumentError
begin
    temp(1)
rescue ArgumentError => e 
    puts e 
end

# IOError
begin
    File.open('temp.txt') do |f|
        f << "Adding Data"
    end
rescue IOError => e 
    puts e 
end

# EOFErrora
begin
    File.open('temp.txt') do |f|
        f.read
        f.gets
        p f.readline
    end
rescue EOFError => e 
    puts e 
end

# IndexError
arr = [1, 2, 3, 4, 5]
begin
    puts arr.fetch(5)
rescue IndexError => e 
    puts e 
end

# LocalJumpError    
def temp2
    yield
end
begin
    temp2
rescue LocalJumpError => e 
    puts e 
end

# NameError
num = 5
begin
    puts num + no
rescue NameError => e 
    puts "undefined local variable or method"
end

# NoMethodError
begin
    1.to_a
rescue NoMethodError => e 
    puts "undefined method `to_a' for :Integer" 
end

# RangeError
begin
    [1, 2, 3].drop(1 << 100)
rescue RangeError => e 
    puts e 
end

# FloatDomainError
begin
    Float::INFINITY.to_r 
rescue FloatDomainError => e 
    puts e
end

# RegexpError
begin
    Regexp.new("[")
rescue RegexpError => e 
    puts e 
end

# RuntimeError
begin
    raise 'Runtime Error'
rescue RuntimeError => e 
    puts e 
end

# SystemCallError
begin
    File.open('xyz.txt')
rescue Errno::ENOENT => e 
    puts e 
end

# SystemStackError
def temp3
    temp3
end
begin
    temp3
rescue SystemStackError => e 
    puts e 
end

# ThreadError
begin
    Thread.stop
rescue ThreadError => e 
    puts 'invalid operation is attempted on a thread' 
end

# TypeError
begin
    arr.slice('one', 'three')
rescue TypeError => e 
    puts e 
end

# ZeroDivisionError
begin
    5 / 0 
rescue ZeroDivisionError => e 
    puts e 
end