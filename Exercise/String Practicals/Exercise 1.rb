string = ["challenge","characteristic","champion"]

def longestCommonPrefix(arr)

    sortedArr = arr.sort
    str = ""

    for i in 0...sortedArr[0].length
        if sortedArr[0][i] == sortedArr[-1][i]
            str << sortedArr[0][i]
        else
            break
        end
    end

    return str
end

p longestCommonPrefix(string)