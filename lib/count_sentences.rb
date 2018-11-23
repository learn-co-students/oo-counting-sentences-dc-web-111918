require 'pry'

class String

  def sentence?
    #my way:
    # if self.end_with?(".")
    #   return true
    # else
    #   return false
    # end

    #better way:
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences()
    self.split(/[.?!]/).delete_if { |string| string == ""}.count
  end
end
