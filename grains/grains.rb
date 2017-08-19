class Grains
  GRAINS = {}
  (1..64).inject(1) do |accum, num|
    GRAINS[num] = accum
    accum *= 2
  end

  def self.square(val)
    raise ArgumentError unless val.between?(1, 64)
    GRAINS[val]
  end

  def self.total
    GRAINS.values.inject(:+)
  end
end

module BookKeeping
  VERSION = 1
end
