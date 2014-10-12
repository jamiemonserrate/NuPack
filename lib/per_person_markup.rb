class PerPersonMarkup
  PER_PERSON_MARKUP_PERCENTAGE = 0.012

  def initialize(number_of_people)
    @number_of_people = number_of_people
  end

  def add(cost)
    @number_of_people * PER_PERSON_MARKUP_PERCENTAGE * cost
  end
end