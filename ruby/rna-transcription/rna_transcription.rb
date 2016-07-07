require 'pry'

class Complement
  VERSION = 3
  PAIRS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(input)
    unless input_invalid?(input)
      result = ''
      input.chars.each { |char| result += PAIRS[char] }
      result
    end
  end

  def self.input_invalid?(input)
    valid_chars = %w(G C T A)
    raise ArgumentError if input.chars.any? { |char| !valid_chars.include?(char) }
  end
end
