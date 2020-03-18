#write your code here
def translate string
  vowels = "aeiou"
  words = string.split
  translated = []
  words.each do |word|
    if vowels.include?(word[0])
      translated.push(word + "ay")
    elsif word.include?("qu")
      translated.push(word.split("qu")[1] + word.split("qu")[0] + "quay") 
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      translated.push(word[3..(word.length - 1)] + word[0..2] + "ay")
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      translated.push(word[2..(word.length - 1)] + word[0..1] + "ay")
    else
      translated.push(word[1..(word.length - 1)] + word[0] + "ay")
    end
  end
  return translated.join(" ")
end