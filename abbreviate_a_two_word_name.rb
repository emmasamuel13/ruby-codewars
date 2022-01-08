#Write a function to convert a name into initials. This kata strictly takes two words with one space in between them. The output should be two capital letters with a dot separating them.

def abbrev_name(name)
    names = name.upcase.split(" ")
    first = names[0]
        first.split("")
    last = names[1]
        last.split("")
    return "#{first[0]}.#{last[0]}"
end

puts abbrev_name("Sam Harris")
puts abbrev_name("Patrick Feenan")
puts abbrev_name("Evan Cole")
puts abbrev_name("P Favuzzi")
puts abbrev_name("David Mendieta")
