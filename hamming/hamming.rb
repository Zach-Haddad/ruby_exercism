class Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length
    (0...str1.length).count {|i| str1[i] != str2[i]}
  end
end

module BookKeeping
  VERSION = 3
end
