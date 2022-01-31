#This time no story, no theory. The examples below show you how to write function accum:

#Examples:
#accum("abcd") -> "A-Bb-Ccc-Dddd"
#accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
#accum("cwAt") -> "C-Ww-Aaa-Tttt"
#The parameter of accum is a string which includes only letters from a..z and A..Z.

def accum(s)
    letters = s.downcase.split("")
    result = []
    letters.each.with_index(1) do | character, amount |
        final = character * amount
        result << final.capitalize
    end
    puts result.join("-")
end

accum("ZpglnRxqenU")
accum("NyffsGeyylB")
accum("MjtkuBovqrU")
accum("EvidjUnokmM")
accum("HbideVbxncC")
