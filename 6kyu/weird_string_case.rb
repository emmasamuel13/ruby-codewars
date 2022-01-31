#Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased and you need to start over for each word. The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ')

def weirdcase(string)
    words = string.downcase.split(" ")
    weirdcase_words = []
    words.each do |word|
        weirdcase_word = []
        letters = word.split("")
        letters.each_with_index do |letter, index|
            if index.even?
                weirdcase_word << letter.upcase
            else
                weirdcase_word << letter
            end
        end
        weirdcase_words << weirdcase_word.join("")
    end
    weirdcase_words.join(" ")
end

puts weirdcase('This')
puts weirdcase('is')
puts weirdcase('This is a test')
