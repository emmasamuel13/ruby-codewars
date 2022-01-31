#In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).

def DNA_strand(dna)
    arr = dna.split("")
    arr_new = []
    arr.each do |letter|
        if letter == "A"
            arr_new << "T"
        elsif letter == "T"
            arr_new << "A"
        elsif letter == "C"
            arr_new << "G"
        else
            arr_new << "C"
        end
    end
    puts arr_new.join
end

DNA_strand("AAAA")
DNA_strand("ATTGC")
DNA_strand("GTAT")
