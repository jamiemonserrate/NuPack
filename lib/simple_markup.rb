class SimpleMarkup
  FLAT_MARKUP_RATE = 0.05
  FOOD_MARKUP_RATE = 0.13

  def initialize(markup_rate)
    @markup_rate = markup_rate
  end

  def for(cost)
    @markup_rate * cost
  end
end