#Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

def XO(str)
    letters = str.downcase.split("")
      count_x = 0
      count_o = 0
    letters.each do |letter|
      if letter == "x"
        count_x +=1
      elsif letter == "o"
        count_o +=1
      end
    end
    puts count_x == count_o
  end

XO("xo")
XO("XO")
XO("xo0")
XO("xxxoo")
XO("xxOo")