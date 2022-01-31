#Trolls are attacking your comment section!
#A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
#Your task is to write a function that takes a string and return a new string with all vowels removed.

def disemvowel(str)
    vowels = ["a", "A", "e", "E", "i","I", "o", "O", "u", "U"]
    letters = str.split("")
    consonants = []
    letters.each do |characters|
        unless vowels.include?(characters) 
            consonants << characters
        end
    end
    consonants.join
end

disemvowel("This website is for losers LOL!")
