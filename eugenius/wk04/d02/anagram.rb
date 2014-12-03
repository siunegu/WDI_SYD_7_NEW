# # Anagram Detector
# # Write a program that, given a word and a list of possible anagrams, selects the correct one(s).
 
# # In other words, given: "listen" and ['enlists', 'google', 'inlets', 'banana'] the program should return "inlets".
 
# # Tips 
# # ---- 
 
# # + Use ruby docs and find some methods that you can use on arrays and strings to help you. 
# # + If you're stuck, google how to find anagrams. 


# My lame attempt
# # word = listen
# # anagrams = ['enlists', 'google' 'inlets']

# # word.each_char.each do |char|
# # 	anagrams.include? char
# # end

# Answer on google
# a = ['enlists', 'google', 'inlets']
# a.group_by { |element| element.downcase.chars.sort }.values
# => [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]]



 def anagram(word, array)
    anagrams = Array.new
    array.each do |array_word|
      if array_word.chars.sort.join == word.chars.sort.join
        then anagrams.push(array_word)
      end
    end
    return anagrams 
  end

puts anagram('listen', ['enlists','google','inlets','banana'])

puts anagram('least', ['slate', 'stale', 'scale', 'leaks'])


