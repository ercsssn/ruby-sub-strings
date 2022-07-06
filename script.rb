def substrings(string)

    string_array = string.gsub(/[^0-9A-Za-z\s]/, '').downcase.split(" ")
    return string_array

end
