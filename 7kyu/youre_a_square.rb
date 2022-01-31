# Given an integral number, determine if it's a square number:

# The tests will always use some integral number, so don't worry about that in dynamic typed languages

def is_square(x)
  if x < 0
    puts false
  elsif root = Math.sqrt(x)
    if root.to_i == root
      puts true
    elsif puts false
    end
  end
end

is_square(-1)
is_square(0)
is_square(3)
is_square(4)
is_square(25)
is_square(26)
