class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    tally = Array.new(limit + 1, 1)
    tally[0] = tally[1] = 0

    (2..Math.sqrt(limit)).each do |sieve|
      if tally[sieve] == 1
        (2 * sieve).step(limit, sieve).each do |num|
          tally[num] = 0
        end
      end
    end

    (2..limit).select { |num| tally[num] == 1 }
  end

end

module BookKeeping
  VERSION = 1
end
