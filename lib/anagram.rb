class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(series)
    initialized_word_sorted = @word.split(//).sort.join #<---split the word into individual characters (RegEx), put them in ABC order, join them back up into a gibberish word
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

    matches #<---implicit return

  end

end #<---class end
