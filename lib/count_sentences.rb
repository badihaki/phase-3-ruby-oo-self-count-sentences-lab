require 'pry'

class String

  def sentence?
    # self[-1] == "."
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(" ")
    #binding.pry
    sentences.filter do |word|
     word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
    end.count
  end

end