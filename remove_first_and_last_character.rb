#It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.

def remove_char(s)
    characters = s.split("")
    characters.delete_at(0)
    amount_char = characters.length
    characters.delete_at(amount_char-1)
    characters.join
end

remove_char('eloquent')
remove_char('country')
remove_char('person')
remove_char('place')
remove_char('ok')
