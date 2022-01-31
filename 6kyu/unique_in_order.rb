#Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

def unique_in_order(iterable)
    if iterable.is_a? String
        array = iterable.split("")
    else
        array = iterable
    end
    no_dup = []
    array.each_with_index do |letter, index|
        if index == 0
            no_dup << letter
        elsif letter != array[index-1]
            no_dup << letter
        else
            nil
        end
    end
    no_dup
end

puts unique_in_order('AAAABBBCCDAABBB')
puts unique_in_order('ABBCcAD')
puts unique_in_order([1,2,2,3,3])
