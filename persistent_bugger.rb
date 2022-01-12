#Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

def persistence(n)
    amount = 0
    while true
        if n > 9
            result = addition(n, amount)
            n = result[0]
            amount = result[1]
        else
            return amount
        end
    end
end

def addition(n, amount)
    sum = 1
    num = n.to_s.split("")
    digit = []
    num.each do |number|
        digit << number.to_i
    end
    digit.each{ |x| sum*=x }
    amount += 1
    return [sum, amount]
end

puts persistence(39)
puts persistence(4)
puts persistence(25)
puts persistence(999)
puts persistence(444)
