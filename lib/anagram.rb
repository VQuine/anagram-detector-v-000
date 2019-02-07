class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(series)
    initialized_word_sorted = @word.split(//).sort.join
    series_word_sorted = []
    matches = []

    series.each do |s_word|
      series_word_sorted = s_word.split(//).sort.join

      if series_word_sorted == initialized_word_sorted
        matches << s_word
      else
        nil
      end        
      
    end

    matches
    
  end


end #<---class end

=begin
takes initialized word and sorts it
store it - word
takes series of words and iterate through each one
sort each word
see if it matches the word
return the match
=end
