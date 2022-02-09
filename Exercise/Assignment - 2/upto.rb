i = 1
i.upto(5) do
    j = 1
    j.upto(5) do
        if j <= i
            print "* "
        end
        j+=1
    end
    puts ""
    i+=1
end