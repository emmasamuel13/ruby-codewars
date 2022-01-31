#The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

def duplicate_encode(word)
    characters = word.downcase.split("")
    hash = characters.tally
    brackets = []
    characters.each do |character|
        if hash[character] == 1
            brackets << "("
        else
            brackets << ")"
        end
    end
    brackets.join("")
end

puts duplicate_encode("din")
puts duplicate_encode("recede")
puts duplicate_encode("Success")
puts duplicate_encode("(( @")
