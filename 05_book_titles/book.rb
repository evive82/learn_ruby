class Book
# write your code here
  def title=(title)
    @title = get_title(title)
  end

  def title
    @title
  end

  def get_title string
    @dont_cap = ['a', 'an', 'the', 'and', 'in', 'of']
    @word_list = string.split
    @new_list = []
    @word_list.each do |word|
      if @dont_cap.include?(word)
        @new_list.push(word)
      else
        @new_list.push(word.capitalize)
      end
    end
    @new_list[0] = @new_list[0].capitalize
    return @new_list.join(" ")
  end
end