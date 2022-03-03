string = ["challenge","characteristic","champion"]

def longestCommonPrefix(arr)
    for i in 0...arr.sort[0].length
        if arr.sort[0][i] != arr.sort[-1][i]
            return arr.sort[0].slice(0, i)
        end
    end
end

p longestCommonPrefix(string)