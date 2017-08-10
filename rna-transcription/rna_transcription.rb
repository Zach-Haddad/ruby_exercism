class Complement
  KEY = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze

  def self.of_dna(dna)
    return '' unless /^[A,G,C,T]*$/ =~ dna
    dna.chars.map { |el| el = KEY[el] }.join
  end
end

module BookKeeping
  VERSION = 4
end
