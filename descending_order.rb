#Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

def descending_order(n)
    array = n.to_s.split("")
    ordered = array.sort.reverse
    ordered.join.to_i
end

descending_order(0)
descending_order(1)
descending_order(123456789)
