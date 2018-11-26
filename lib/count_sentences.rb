require 'pry'

class String

  def sentence?
    self[-1] =="."
  end

  def question?
  self[-1] == "?"
  end

  def exclamation?
  self[-1] == "!"
  end

  def count_sentences
    count = 0
  arr = self.split(/[.!?]/)
  arr.each do |ele|
    if ele != ""
    count+=1
    end
  end
    return count
  end
end

# "This, well, is a sentence. This is too!! And so is this, I think? Woo..."