i = 1
i.step(5) do |i|
    j = 1
    j.step(5) do |j|
        if j >= i
            print "* "
        end
    end
    puts ""
end