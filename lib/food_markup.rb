class FoodMarkup
  FLAT_MARKUP_PERCENTAGE = 0.13

  def add(cost)
    FLAT_MARKUP_PERCENTAGE * cost
  end
end