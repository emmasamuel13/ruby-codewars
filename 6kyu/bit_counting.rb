#Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

def count_bits(n)
    binary = n.to_s(2).split("")
    digit = []
    binary.each do |number|
        digit << number.to_i
    end
    sum = 0
    digit.each{ |x| sum+=x }
    sum
end

puts count_bits(0)
puts count_bits(4)
puts count_bits(7)
puts count_bits(9)
puts count_bits(10)
