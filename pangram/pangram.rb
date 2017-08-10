class Pangram
  def self.pangram?(phrase)
    phrase.downcase.chars.
      select { |l| l =~ /[a-z]/ }.uniq.sort == ("a".."z").to_a
  end
end

module BookKeeping
  VERSION = 4
end
