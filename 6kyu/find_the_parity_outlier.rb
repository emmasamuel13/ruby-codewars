#You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

def find_outlier(integers)
    even = 0
    odd = 0
    integers.each { |i| i.even? ? even += 1 : odd += 1 }
    if even == 1
        integers.each { |n| return n if n.even? }
    else
        integers.each { |n| return n if n.odd? }
    end
end

puts find_outlier([0, 1, 2])
puts find_outlier([1, 2, 3])
