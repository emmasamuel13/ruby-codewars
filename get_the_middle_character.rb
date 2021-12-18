# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

def get_middle(s)
  array = s.split('')
  half = array.length / 2
  result = if array.length.even?
             [array[half - 1], array[half]]
           else
             [array[half]]
           end
  puts result.join('')
end

get_middle('test')
get_middle('testing')
get_middle('middle')
get_middle('A')
get_middle('of')
