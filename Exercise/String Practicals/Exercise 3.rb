string = "communication"

def reverseVowelsOfstr(str)
    arr = str.gsub(/[^aeiou]/, "").chars

    (0...str.length).each do |i|
        if str[i].match?(/[aeiou]/)
            str[i] = arr.pop()
        end
    end
    return str
end

p reverseVowelsOfstr(string)