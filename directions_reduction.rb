#… a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.
#You can immediatly see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan.

def dirReduc(arr)
    n_and_s = 0
    e_and_w = 0
    route = []
    arr.each do |direction|
        if direction == "NORTH"
            n_and_s += 1
        elsif direction == "SOUTH"
            n_and_s -= 1
        elsif direction == "EAST"
            e_and_w += 1
        elsif direction == "WEST"
            e_and_w -= 1
        end
    end
    if n_and_s == 0 && e_and_w == 0
        return route
    end
    if n_and_s > 0
        n_and_s.times {route << "NORTH"}
    elsif n_and_s < 0
        n_and_s *= -1
        n_and_s.times {route << "SOUTH"}
    end
    if e_and_w > 0
        e_and_w.times {route << "EAST"}
    elsif e_and_w < 0
        e_and_w *= -1
        e_and_w.times {route << "WEST"}
    end
    return route
end

puts dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
puts dirReduc(["NORTH", "WEST", "SOUTH", "EAST"])
