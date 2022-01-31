#Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number - "(123) 456-7890"

def create_phone_number(numbers)
    return "(#{numbers[0]}#{numbers[1]}#{numbers[2]}) #{numbers[3]}#{numbers[4]}#{numbers[5]}-#{numbers[6]}#{numbers[7]}#{numbers[8]}#{numbers[9]}"
end

puts create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
puts create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
puts create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

#Need to remember that you can use [0..2] to call indexes 0 to 2 of an array
