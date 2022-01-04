#Given a non-empty array of integers, return the result of multiplying the values together in order.

def grow(x)
    y = 1
    x.each do |num|
        y = y * num
    end
    y
end

puts grow([1, 2, 3])
puts grow([4, 1, 1, 1, 4])
puts grow([2, 2, 2, 2, 2, 2])
