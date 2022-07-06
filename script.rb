def substrings(string)

    clean_string = string.gsub(/[^0-9A-Za-z\s]/, '').downcase
    puts clean_string

end
