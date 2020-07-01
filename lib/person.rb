class Person
  attr_accessor :name, :points
  def initialize(name = "Computer")
    @name = name
    @points = 0
  end
  def round_win
    @points += 1
  end
end