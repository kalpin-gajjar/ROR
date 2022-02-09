i = 5
i.downto(1) do
    j = 5
    j.downto(1) do
        if j > i 
            print "  "
        end
        j-=1
    end
    k = 5
    k.downto(1) do
        if k <= i
            print "* "
        end
        k-=1
    end
    puts ""
    i-=1
end