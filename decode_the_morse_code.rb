#In this kata you have to write a simple Morse code decoder.
#Your task is to implement a function that would take the morse code as input and return a decoded human-readable string.

def decodeMorse(morseCode)
    morse_dictionary = {
        ".-" => "A",
        "-..." => "B",
        "-.-." => "C",
        "-.." => "D",
        "." => "E",
        "..-." => "F",
        "--." => "G",
        "...." => "H",
        ".." => "I",
        ".---" => "J",
        "-.-" => "K",
        ".-.." => "L",
        "--" => "M",
        "-." => "N",
        "---" => "O",
        ".--." => "P",
        "--.-" => "Q",
        ".-." => "R",
        "..." => "S",
        "-" => "T",
        "..-" => "U",
        "...-" => "V",
        ".--" => "W",
        "-..-" => "X",
        "-.--" => "Y",
        "--.." => "Z",
        " " => " ",
        ".----" => "1",
        "..---" => "2",
        "...--" => "3",
        "....-" => "4",
        "....." => "5",
        "-...." => "6",
        "--..." => "7",
        "---.." => "8",
        "----." => "9",
        "-----" => "0",
        "...---..." => "SOS",
        "-.-.--" => "!",
        ".-.-.-" => "."
    }
    morse = morseCode.split("   ").select do |character|
        character != ''
      end
    sentence = []
    morse.each do |word|
        words = []
        word.split(" ").each do |char|
            words << morse_dictionary[char]
        end
        sentence << words.join("")
    end
    sentence.join(" ")
end

puts decodeMorse('.... . -.--   .--- ..- -.. .')
puts decodeMorse('.-')
puts decodeMorse('.')
puts decodeMorse('..')
puts decodeMorse('. .')
puts decodeMorse(' .   .')
puts decodeMorse('... --- ...')
puts decodeMorse('...---...')
puts decodeMorse('... --- ... -.-.--   - .... .   --.- ..- .. -.-. -.-   -... .-. --- .-- -.   ..-. --- -..-   .--- ..- -- .--. ...   --- ...- . .-.   - .... .   .-.. .- --.. -.--   -.. --- --. .-.-.-')
