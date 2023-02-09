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
    if self.length>0
       self.scan(/[?.!] /).length+1
    else
       0
    end
  end
end

puts "hi".count_sentences