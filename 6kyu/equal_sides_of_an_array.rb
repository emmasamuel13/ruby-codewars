#You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

def find_even_index(arr)
    arr.each_with_index do |num, ind|
        if ind == 0
            if arr[1..ind-1].sum == 0
                return 0
            end
        elsif
            if arr[0..ind-1].sum == arr[ind+1..-1].sum
                return ind
            end
        end
    end
    return -1
end

puts find_even_index([1,2,3,4,3,2,1])
puts find_even_index([1,100,50,-51,1,1])
puts find_even_index([1,2,3,4,5,6])
puts find_even_index([20,10,30,10,10,15,35])
puts find_even_index([20,10,-80,10,10,15,35])
puts find_even_index([10,-80,10,10,15,35,20])
puts find_even_index(Array(1..100))
puts find_even_index([0,0,0,0,0])
puts find_even_index([-1,-2,-3,-4,-3,-2,-1])
puts find_even_index(Array(-100..-1))
