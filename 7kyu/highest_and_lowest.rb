#In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

def high_and_low(numbers)
    integers = numbers.split(" ").map { |digits| digits.to_i }
    integers.sort!
    amount = integers.length
    result = [integers[0], integers[amount-1]]
    result.reverse.join(" ")
    puts result
end

high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")
