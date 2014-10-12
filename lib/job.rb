class Job
  FLAT_MARKUP_PERCENTAGE = 0.05
  PER_PERSON_MARKUP_PERCENTAGE = 0.012

  def initialize(cost, number_of_people)
    @cost = cost
    @number_of_people = number_of_people
  end

  def estimate
    cost_with_flat_markup + number_of_people_markup(cost_with_flat_markup)
  end

  private
  def cost_with_flat_markup
    @cost + flat_markup
  end

  def flat_markup
    @cost * FLAT_MARKUP_PERCENTAGE
  end

  def number_of_people_markup(amount)
    @number_of_people * PER_PERSON_MARKUP_PERCENTAGE * amount
  end
end