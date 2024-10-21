# Implement a method #substring that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was found in the original string
# and how many times it was found.
# Next, make sure your method can handle multiple words
# Tip: Recall how to turn strings into arrays and arrays into strings
# 
def substrings(word, dictionary)
  # create object to return with the substrings that match
  matches = Hash.new(0)
  # iterate over array / collection fo words (focus on 1 word for now)
  # slice word at index 0 (the word needs to be counted too, not just the substrings)
  # turn word into char array and downcase for case insensitivy
  chars = word.downcase.chars
  # make substring starting at index 1
  substring_to_compare = ""
  for i in (0..(chars.length - 1))
    # create word with chars from index i until end
    substring_to_compare = chars.slice(i, chars.length).join
    # compare substring with rest of words in dictionary (array of valid substrings)
    for j in (0..dictionary.length - 1)
        # if match, add to object 
        if (substring_to_compare.eql?(dictionary[j]))
            matches[substring_to_compare] += 1
        end
    end
  end

  matches
  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)