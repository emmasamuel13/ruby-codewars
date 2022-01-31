#Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it. Your task is to write a function maskify, which changes all but the last four characters into '#'.

def maskify(cc)
    arr = cc.split("")
    new_arr = []
    if cc.length >= 4
        arr[0..-5].each do |_|
            new_arr << "#"
        end
        new_arr << arr[-4..-1]
    else
        new_arr << arr
    end
    puts new_arr.join
end

maskify('4556364607935616')
maskify('1')
maskify('11111')
