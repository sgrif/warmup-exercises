module AlphabetSoup
  def self.words
    words = []
    loop do
      word = gets.chomp
      if word.empty?
        break
      else
        words << word
      end
    end
    words.sort
  end
end
