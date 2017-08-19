class Year
  def self.leap?(yr)
    return false if yr % 4 != 0
    return false if yr % 100 == 0 && yr % 400 != 400
    true
  end
end

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400

module BookKeeping
  VERSION = 3
end
