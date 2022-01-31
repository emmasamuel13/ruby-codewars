#Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

def pig_it text
    words = text.split(" ")
    pig_latin = []
    words.each do |word|
        if word =~ /[[:punct:]]/
            pig_latin << word
        else
            new_word = "#{word}#{word[0]}ay"
            new_word.slice!(0)
            pig_latin << new_word
        end
    end
    pig_latin.join(" ")
end

puts pig_it('Pig latin is cool')
puts pig_it('This is my string')
puts pig_it('Hello world !')
