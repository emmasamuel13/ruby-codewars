#Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

def even_or_odd(number)
    puts number %2 == 0 ? "Even" : "Odd"
end

even_or_odd(2)
even_or_odd(0)
even_or_odd(7)
even_or_odd(1)
even_or_odd(-1)
