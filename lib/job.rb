class Job
  FLAT_MARKUP_PERCENTAGE = 0.05

  def initialize(cost)
    @cost = cost
    @markups = []
  end

  def add_markup(markup)
    @markups << markup
  end

  def estimate
    cost_with_flat_markup + total_markup
  end

  private
  def cost_with_flat_markup
    @cost + flat_markup
  end

  def flat_markup
    @cost * FLAT_MARKUP_PERCENTAGE
  end

  def total_markup
    markup_amounts = @markups.collect { |markup| markup.add(cost_with_flat_markup) }

    return markup_amounts.reduce(:+) unless markup_amounts.empty?
    0
  end
end