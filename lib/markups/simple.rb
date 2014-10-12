module Markups
  class Simple
    FLAT_RATE = 0.05
    FOOD_RATE = 0.13
    PHARMACEUTICALS_RATE= 0.075
    ELECTRONICS_RATE= 0.02

    def initialize(markup_rate)
      @markup_rate = markup_rate
    end

    def for(cost)
      @markup_rate * cost
    end
  end
end