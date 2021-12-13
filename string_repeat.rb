#Write a function called repeatStr which repeats the given string string exactly n times.

def repeat_str (n, s)
    repeated = [] #create an array
    n.times {repeated.push(s)} #n amount of times, add the string to the array
    puts repeated.join #convert back into a string
  end

repeat_str(3, "*")
repeat_str(5, "#")
repeat_str(2, "ha ")
repeat_str(7, "test ")
