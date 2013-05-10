class Allergies

  attr_reader :switches
  def initialize(score)
    @switches = score.to_s(2).reverse.chars
  end

  def list
    unless @list
      list = []
      switches.each_with_index do |switch, i|
        list << allergy_scores[i] if switch == '1'
      end
      @list = list.compact
    end
    @list
  end

  def allergic_to?(item)
    list.include?(item)
  end

  def allergy_scores
    ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats']
  end
end
