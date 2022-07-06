dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
my_word = "Howdy partner, sit down! How's it going?"

def substrings(string, words_array)

    string_array = string.gsub(/[^0-9A-Za-z\s]/, '').downcase.split(" ")

    string_array.each do |word|
        letters_array = word.split("")
        words_array.each do |sub|
            sub_letters_array = sub.split("")
            if sub_letters_array.intersect?(letters_array)
                puts sub
            end
        end

      end

    return string_array

end
