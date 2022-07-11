dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
my_word = "Howdy partner, sit down! How's it going?"

def substrings(string, words_array)

    string_array = string.gsub(/[^0-9A-Za-z\s]/, '').downcase.split(" ")

    match_array  = []

    string_array.each do |word|

        letters_array = word.split("")
        puts "WORD #{letters_array}"
        word_test_array = []

        words_array.each do |substring|
            sub_letters_array = substring.split("")

            if sub_letters_array.intersect?(letters_array) #Check if there is at least one character in common

               if sub_letters_array == letters_array
                match_array.append(substring)  #Get exact match
               else
                puts substring
                array_match = sub_letters_array & letters_array
                word_test = array_match.join("")

                if words_array.include?(word_test)
                    
                    if (!word_test_array.include?(word_test))
                        word_test_array.append(word_test)
                        match_array.append(word_test)
                    end
                end
               end
            # else
            #     puts "No letters matched"
            end
        end

      end

      p match_array

end
