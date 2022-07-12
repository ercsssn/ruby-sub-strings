#My solution
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
                array_match = sub_letters_array & letters_array
                word_test = array_match.join("")

                if words_array.include?(word_test)
                    puts word_test
                    
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

#TO FIX : Filter logic fails if two words have the same substrings sit and it

#Top 1
def substrings(text, dictionary)
    result = Hash.new(0)
    lowered_text = text.downcase
  
    dictionary.each do |word|
      matches = lowered_text.scan(word).length
      result[word] = matches unless matches == 0
    end
  
    return result
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  substrings("Howdy partner, sit down! How's it going?", dictionary)


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Top 2
def substrings (string, dictionary)
    matches = {}
    dictionary.each do |word|
        matches[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
    end
    matches
end

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

#Top 3
def substrings(string, dictionary) 
    string = string.downcase
    count = string.split(' ').reduce(Hash.new(0)) do |object, word|
      dictionary.each {|element| object[element] += 1 if word.include?(element)}
      object
    end
    return count
end