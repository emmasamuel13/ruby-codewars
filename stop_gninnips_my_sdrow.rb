#Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

def spin_words(string)
    words = string.split(" ")
    final = []
    words.each do |w|
        if w.length >= 5
            final << w.reverse
        else
            final << w
        end
    end
    final.join(" ")
end

puts spin_words("Welcome")
puts spin_words("Hey fellow warriors")
