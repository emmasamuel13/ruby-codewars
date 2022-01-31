#You get an array of numbers, return the sum of all of the positives ones.
#Note: if there is nothing to sum, the sum is default to 0.

def positive_sum(arr)
    sum = 0
    arr.each do |number|
        sum += number if number > 0 
    end
    puts sum
end

positive_sum([1,2,3,4,5])
positive_sum([1,-2,3,4,5])
positive_sum([-1,2,3,4,-5])
positive_sum([])
positive_sum([-1,-2,-3,-4,-5])
