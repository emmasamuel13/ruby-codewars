#An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

def is_isogram(string)
    array = string.downcase.split("")
    no_dup = array.uniq
    if no_dup == array
        puts true
    else
        puts false
    end
end

is_isogram("Dermatoglyphics")
is_isogram("isogram")
is_isogram("aba")
is_isogram("moOse")
is_isogram("isIsogram")
is_isogram("")
