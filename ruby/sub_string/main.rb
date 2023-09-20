
=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found    
=end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#return hash with each dictonary item substring found based on input word as a key, and the total amount of this item as value
def substrings(word, dictionary)
    new_hash = {}
    lower_word = word.downcase

    #itterate whole dictionary:
    #   if dictonary item exists in word
    dictionary.map do|item| 
        if lower_word.include?(item)
            count = lower_word.scan(item).count #how many times item is in word 
            new_hash[item] = count #add dictionary items in new_hash as key, value is number of occurances of dictionary item within word
        end 
    end

    return new_hash

end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
