string = "aA"

def reverseVowelsOfstr(str)
    arr = str.gsub(/[^aAeEiIoOuU]/, "").chars

    (0...str.length).each do |i|
        if str[i].match?(/[aAeEiIoOuU]/)
            str[i] = arr.pop()
        end
    end
    return str
end

p reverseVowelsOfstr(string)