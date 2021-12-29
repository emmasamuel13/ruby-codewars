#Given an array of integers, find the one that appears an odd number of times. There will always be only one integer that appears an odd number of times.

#Codewars doesn't have Ruby 3.0 so I need to find an alternative that does not use .tally

def find_it(seq)
    hash = Hash.new(0)
    seq.each { |num| hash[num] +=1 }
    final = []
    hash.each do |char, quantity|
        unless quantity % 2 == 0
            final << char
        end
    end
    puts final.join.to_f
end

find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
find_it([10])
find_it([1,1,1,1,1,1,10,1,1,1,1])
