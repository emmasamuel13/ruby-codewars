#In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

def filter_list(l)
    new_arr = []
    l.each do |char|
        if char.is_a? Integer
            new_arr << char
        end
    end
    return new_arr            
end

filter_list([1,2,'a','b'])
filter_list([1,'a','b',0,15])
filter_list([1,2,'aasf','1','123',123])
