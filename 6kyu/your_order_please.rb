#Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.

#Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

#If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

def order(words)
    word = words.split(" ")
    answer = word.sort_by { |s| s.scan(/\d+/).first.to_i }
    answer.join(" ")
end

puts order("is2 Thi1s T4est 3a")
puts order("4of Fo1r pe6ople g3ood th5e the2")
puts order("")
