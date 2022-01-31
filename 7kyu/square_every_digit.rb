#Welcome. In this kata, you are asked to square every digit of a number and concatenate them. For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

def square_digits(num)
    root = num.to_s.split("")
    squared = []
    root.each do |value|
        squared << value.to_i ** 2
    end
    puts squared.join.to_i
end

square_digits(3212)
square_digits(2112)
square_digits(1111)
square_digits(1234321)
square_digits(0)
