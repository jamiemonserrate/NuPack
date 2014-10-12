class Job
  FLAT_MARKUP_PERCENTAGE = 0.05

  def initialize(cost)
    @cost = cost
  end

  def estimate
    @cost + flat_markup
  end

  private
  def flat_markup
    @cost * FLAT_MARKUP_PERCENTAGE
  end
end