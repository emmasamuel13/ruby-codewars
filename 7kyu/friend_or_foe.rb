def friend(friends)
    besties = []
    friends.each do |name|
        if name.length == 4
            besties << name
        else
            nil
        end
    end
    besties
end

puts friend(["Ryan", "Kieran", "Mark"])
puts friend(["Ryan", "Jimmy", "123", "4", "Cool Man"])
puts friend(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"])
puts friend(["Love", "Your", "Face", "1"])
