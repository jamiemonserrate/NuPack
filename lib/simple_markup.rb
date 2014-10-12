class SimpleMarkup
  FLAT_MARKUP_RATE = 0.05
  FOOD_MARKUP_RATE = 0.13
  PHARMACEUTICALS_MARKUP_RATE= 0.075
  ELECTRONICS_MARKUP_RATE= 0.02

  def initialize(markup_rate)
    @markup_rate = markup_rate
  end

  def for(cost)
    @markup_rate * cost
  end
end