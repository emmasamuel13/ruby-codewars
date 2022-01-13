#You need to create a fibonacci function that given a signature array/list, returns the first n elements - signature included of the so seeded sequence

def tribonacci(signature,n)
    if n == 0
        return []
    else
        while signature.length < n
            signature << signature[-3] + signature[-2] + signature[-1]
        end
    return signature[0..n-1]
    end
end

puts tribonacci([1,1,1],10)
puts tribonacci([0,0,1],10)
puts tribonacci([0,1,1],10)
puts tribonacci([1,0,0],10)
puts tribonacci([0,0,0],10)
puts tribonacci([1,2,3],10)
puts tribonacci([3,2,1],10)
puts tribonacci([1,1,1],1)
puts tribonacci([300,200,100],0)
puts tribonacci([0.5,0.5,0.5],30)
