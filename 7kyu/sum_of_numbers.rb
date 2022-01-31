#Given two integers a and b, which can be positive or negative, find the sum of all the integers between and including them and return it.
def get_sum(a,b)
    num = []
    if a < b
        num = (a..b).to_a
    else
        num = (b..a).to_a
    end
    sum = 0
    num.each{ |n| sum+=n }
    puts sum
end

get_sum(0,1)
get_sum(0,-1)
get_sum(1,2)
get_sum(5,-1)
get_sum(5,5)
