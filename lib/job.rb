class Job
  def initialize(cost)
    @cost = cost
    @additional_markups = []
  end

  def add_markup(markup)
    @additional_markups << markup
  end

  def estimate
    round_off cost_with_flat_markup + total_markup
  end

  private
  def cost_with_flat_markup
    @cost + Markups::Simple.new(Markups::Simple::FLAT_RATE).for(@cost)
  end

  def total_markup
    @additional_markups.inject(0) { |sum, markup| sum + markup.for(cost_with_flat_markup) }
  end

  def round_off(amount)
    amount.round(2)
  end
end