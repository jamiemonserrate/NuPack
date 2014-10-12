class Job
  def initialize(cost)
    @cost = cost
    @markups = []
  end

  def add_markup(markup)
    @markups << markup
  end

  def estimate
    round_off cost_with_flat_markup + total_markup
  end

  private
  def cost_with_flat_markup
    @cost + Markups::Simple.new(Markups::Simple::FLAT_MARKUP_RATE).for(@cost)
  end

  def total_markup
    markup_amounts = @markups.collect { |markup| markup.for(cost_with_flat_markup) }

    return markup_amounts.reduce(:+) unless markup_amounts.empty?
    0
  end

  def round_off(amount)
    amount.round(2)
  end
end