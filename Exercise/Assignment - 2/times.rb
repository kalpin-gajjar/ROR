i = 5
j = 5
k = 5
i.times do |i|
    j.times do |j|
        if j > i
            print "  "
        end
    end
    k.times do |k|
        if k <= i
            print "* "
        end
    end
    puts ""
end