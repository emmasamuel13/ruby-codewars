#Numbers ending with zeros are boring. They might be fun in your world, but not here. Get rid of them. Only the ending ones. Zero alone is fine, don't worry about it. Poor guy anyway

def no_boring_zeros(num)
    outcome = 0
    if num == 0
        outcome+=num
    elsif num % 10 == 0
        outcome+=num /= 10
    else
        outcome+=num
    end
    return outcome if outcome == 0 || outcome % 10 != 0
    no_boring_zeros(outcome)
end

puts no_boring_zeros(1450)
puts no_boring_zeros(960000)
puts no_boring_zeros(1050)
puts no_boring_zeros(-1050)
puts no_boring_zeros(0)
