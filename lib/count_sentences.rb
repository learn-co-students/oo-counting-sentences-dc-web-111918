require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array_sentance = self.split(/\.|\?|\!/)
    counter = 0
    array_sentance.each do |sentance|
      array_sentance.delete_if{|sentance| sentance == ""}
      counter += 1
    end
    counter
  end
end
