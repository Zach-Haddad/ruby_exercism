class Raindrops
  def self.convert(num, steps = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'})
    res = ''
    steps.each { |k,v| res += v if num % k == 0 }
    res == '' ? num.to_s : res
  end
end

module BookKeeping
  VERSION = 3
end
