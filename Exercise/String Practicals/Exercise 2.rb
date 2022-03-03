sentence = "       This   is   my  ruby string     practical  assignment   "

def lengthOfLastWord(str)
    str.strip.squeeze(" ").split(" ")[-1].length
end

p lengthOfLastWord(sentence)