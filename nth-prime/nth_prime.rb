class Prime
  def self.nth(val)
    raise ArgumentError if val == 0

    idx = 0
    until val == 0
      idx += 1
      val -= 1 if Prime.prime?(idx)
    end

    idx
  end

  def self.prime?(n)
    return false if n < 2
    (2..Math.sqrt(n).floor).none? { |val| n % val == 0 }
  end
end

module BookKeeping
  VERSION = 1
end
