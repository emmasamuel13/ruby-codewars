#Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

def digital_root(n)
    num = n.to_s.split("")
    digit = []
    num.each do |number|
        digit << number.to_i
    end
    sum = 0
    digit.each{ |x| sum+=x }
    return sum if sum < 10
    digital_root(sum)
end

puts digital_root(16)
puts digital_root(942)
puts digital_root(132189)
puts digital_root(493193)
