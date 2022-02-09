module One
    def m1
        puts "This is first module"
    end
end

module Two
    def m2
        puts "This is second module"
    end
end

module Three
    def m3
        puts "This is third module"
    end
end

class C1
    def firstClass
        puts "This is class C1"
    end
end

class C2 < C1
    def secondClass
        puts "This is class C2"
    end
end

class C3 < C2
    def thirdClass
        puts "This is class C3"
    end
end

class C4
    include(One)
    include(Two)
    extend(Three)

    def forthClass
        puts "This is class C4"
    end
end

c3 = C3.new()
c3.firstClass
c3.secondClass
c3.thirdClass

c4 = C4.new()
c4.forthClass
c4.m1
c4.m2

C4.m3
































































