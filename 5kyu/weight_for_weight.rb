#The weight of a number will be the sum of its digits.
#Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?
#When two numbers have the same "weight", let us class them as if they were strings (alphabetical ordering) and not numbers:
#180 is before 90 since, having the same "weight" (9), it comes before as a string.
#All numbers in the list are positive numbers and the list can be empty.

def order_weight(strng)
    weights = strng.split(" ")
    order = Hash.new
    weights.each do |kilos|
        digits = []
        num = kilos.split("")
        num.each do |number|
            digits << number.to_i
        end
        sum = 0
        digits.each{ |n| sum += n}
        order[kilos] = sum
    end
    order.sort_by {|_kilos, sum| sum}.to_h.keys.join(" ")
end

puts order_weight("103 123 4444 99 2000")
puts order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")

#this hasn't worked, need to use something other than a hash...
