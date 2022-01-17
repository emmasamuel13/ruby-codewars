#Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

def valid_parentheses(string)
    characters = string.split("")
    parantheses = []
    characters.each do |char|
        if char == "(" || char == ")"
            parantheses << char
        end
    end
    count = 0
    parantheses.each_with_index do |para, index|
        if index == 0 && para == ")"
            return false
        elsif index == parantheses.length-1 && para == "("
            return false
        elsif para == "("
            count += 1
        else
            if count > 0
                count -= 1
            else
                return false
            end
        end
    end
    return count == 0
end

puts valid_parentheses("  (")
puts valid_parentheses(")test")
puts valid_parentheses("")
puts valid_parentheses("hi())(")
puts valid_parentheses("hi(hi)()")
puts valid_parentheses("())(()")
