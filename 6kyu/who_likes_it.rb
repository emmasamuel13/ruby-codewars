#You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item. Implement the function which takes an array containing the names of people that like an item. Note: For 4 or more names, the number in "and 2 others" simply increases

def likes(names)
    if names.length == 0
        "no one likes this"
    elsif names.length == 1
        "#{names[0]} likes this"
    elsif names.length == 2
        "#{names[0]} and #{names[1]} like this"
    elsif names.length == 3
        "#{names[0]}, #{names[1]} and #{names[2]} like this"
    else
        "#{names[0]}, #{names[1]} and #{names.length-2} others like this"
    end
end

puts likes([])
puts likes(['Peter'])
puts likes(['Jacob', 'Alex'])
puts likes(['Max', 'John', 'Mark'])
puts likes(['Alex', 'Jacob', 'Mark', 'Max'])
