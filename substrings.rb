# Implement a method #substring that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was found in the original string
# and how many times it was found.
# Next, make sure your method can handle multiple words
# Tip: Recall how to turn strings into arrays and arrays into strings
# 
def substrings(string, dictionary)
  # create object to return with the substrings that match
  matches = Hash.new(0)

  # convert string into array of words 
  words_array = string.gsub(/[^\w\s]/, '').split

  # check for substrings for each word of the array
  words_array.each do |word|
    word = word.downcase
    # iterate over the dictionary and check if the word from the input string includes the dictionary word
    for i in 0...dictionary.length
        if (word.include?(dictionary[i]))
            matches[dictionary[i]] += 1
        end
    end
  end
  matches
end
    

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)

