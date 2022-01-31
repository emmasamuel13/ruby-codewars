#In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?
#The number can be negative already, in which case no change is required.
#Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.

def make_negative(num)
    puts num > 0 ? num *=-1 : num *=1
end

make_negative(6)
make_negative(54)
make_negative(5483)
make_negative(-68)
make_negative(-684)
make_negative(0)
make_negative(0.684)
