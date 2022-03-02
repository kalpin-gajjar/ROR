n = 1234321

def isPalindrome(n)
    n.to_s == n.to_s.reverse
end

p isPalindrome(n)