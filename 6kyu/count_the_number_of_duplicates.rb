#Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

def duplicate_count(text)
    array = text.downcase.split("")
    count = 0
    unless array.length == 0
        hash = Hash.new(0)
        array.each { |char| hash[char] +=1 }
        hash.each do |char, quantity|
            if quantity > 1
                count += 1
            end
        end
    end
    return count
end

puts duplicate_count("")
puts duplicate_count("abcde")
puts duplicate_count("abcdeaa")
puts duplicate_count("abcdeaB")
puts duplicate_count("Indivisibilities")
