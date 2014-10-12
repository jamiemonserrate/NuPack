module Markups
  class Simple
    module Rates
      FLAT = 0.05
      FOOD = 0.13
      PHARMACEUTICALS = 0.075
      ELECTRONICS = 0.02
    end

    def initialize(markup_rate)
      @markup_rate = markup_rate
    end

    def for(cost)
      @markup_rate * cost
    end

    [:flat, :food, :pharmaceuticals].each do |rate_name|
      define_singleton_method rate_name do
        Simple.new(Rates.const_get(rate_name.upcase))
      end
    end

  end
end