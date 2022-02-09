i = 1
until i > 5
    j = 1
    until j > i
        print " "
        j+=1
    end
    k = 5
    until k < i
        print "* "
        k-=1
    end
    puts ""
    i+=1
end 