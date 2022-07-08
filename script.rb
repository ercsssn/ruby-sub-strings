dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
my_word = "Howdy partner, sit down! How's it going?"

def substrings(string, words_array)

    string_array = string.gsub(/[^0-9A-Za-z\s]/, '').downcase.split(" ")

    string_array.each do |word|

        letters_array = word.split("")
        puts "WORD #{letters_array}"

        words_array.each do |substring|
            sub_letters_array = substring.split("")

            if sub_letters_array.intersect?(letters_array) #Check if there is at least one character in common
                
               if sub_letters_array == letters_array
                puts substring 
               end
                # puts "TO MATCH #{sub_letters_array}"
                array_match = sub_letters_array & letters_array
                # p array_match
            else
                puts "No letters matched"
            end
        end

      end

end
