#Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none.

def anagrams(word, words)
    word = word.split("")
    ana = []
    words.each do |ind|
        text = ind.split("")
        if text.sort == word.sort
            ana << text.join("")
        end
    end
    return ana
end

puts anagrams("a", ["a", "b", "c", "d"])
puts anagrams("ab", ["ab", "ba", "aa", "bb", "cc", "ac", "bc", "cd"])
puts anagrams("abba", ["aabb", "bbaa", "abab", "baba", "baab", "abcd", "abbba", "baaab", "abbab", "abbaa", "babaa"])
