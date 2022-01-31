#Help Suzuki rake his garden! The monastery has a magnificent Zen garden made of white gravel and rocks and it is raked diligently everyday by the monks. Suzuki having a keen eye is always on the lookout for anything creeping into the garden that must be removed during the daily raking such as insects or moss. Return a string with all items except a rock or gravel replaced with gravel

def rake_garden(garden)
    raked = []
    item = garden.split(" ")
    item.each do |raking|
        if raking == "gravel" || raking == "rock"
            raked << raking
        else
            raked << "gravel"
        end
    end
    raked.join(" ")
end

puts rake_garden('gravel')
puts rake_garden('rock')
puts rake_garden('ant rock ant')
garden1 = 'slug spider rock gravel gravel gravel gravel gravel gravel gravel'
puts rake_garden(garden1)
garden2 = 'gravel gravel gravel gravel gravel gravel gravel gravel gravel rock slug ant gravel gravel snail rock gravel gravel gravel gravel gravel gravel gravel slug gravel ant gravel gravel gravel gravel rock slug gravel gravel gravel gravel gravel snail gravel gravel rock gravel snail slug gravel gravel spider gravel gravel gravel gravel gravel gravel gravel gravel moss gravel gravel gravel snail gravel gravel gravel ant gravel gravel moss gravel gravel gravel gravel snail gravel gravel gravel gravel slug gravel rock gravel gravel rock gravel gravel gravel gravel snail gravel gravel rock gravel gravel gravel gravel gravel spider gravel rock gravel gravel'
puts rake_garden(garden2)
