#Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

def bool_to_word bool
    bool ? "Yes" : "No"
end

bool_to_word(true), 'Yes'
bool_to_word(false), 'No'
