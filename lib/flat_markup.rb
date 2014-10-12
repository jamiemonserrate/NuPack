class FlatMarkup
  FLAT_MARKUP_PERCENTAGE = 0.05

  def for(cost)
    cost * FLAT_MARKUP_PERCENTAGE
  end
end