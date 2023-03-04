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
    count = 0
    ltr_array = self.split(/\.|\?|!/)
    ltr_array.each do |ltr|
      if ltr.size > 0
        count += 1
      end
    end
    count
  end
end