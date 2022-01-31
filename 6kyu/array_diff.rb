#Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

def array_diff(a, b)
    a - b
end

puts array_diff([1,2], [1])
puts array_diff([1,2,2], [1])
puts array_diff([1,2,2], [2])
puts array_diff([1,2,2], [])
puts array_diff([], [1,2])
puts array_diff([1,2,3], [1,2])
