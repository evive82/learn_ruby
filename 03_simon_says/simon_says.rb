#write your code here
def echo string
  return string
end

def shout string
  return string.upcase
end

def repeat string, howMany = 2
  return ((string + " ") * howMany).strip
end

def start_of_word string, howMany = 1
  return string[0..(howMany - 1)]
end

def first_word string
  return string.split[0]
end

def titleize string
  dont_cap = ["the", "and", "over"]
  words = string.split
  new_words = []
  words.each do |word|
    if !dont_cap.include?(word)
      new_words.push(word.capitalize)
    else
      new_words.push(word)
    end
  end
  new_words[0] = new_words[0].capitalize
  return new_words.join(" ")
end