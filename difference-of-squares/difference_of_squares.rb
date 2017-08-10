class Squares
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def square_of_sum
    (1..self.n).to_a.reduce(:+)**2
  end

  def sum_of_squares
    (1..self.n).to_a.inject{|sum, n| sum + n**2}
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 4
end
