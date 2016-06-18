class Hamming
  VERSION = File.read("./.version").to_i

  def self.compute(str_one, str_two)
    raise ArgumentError if str_one.length != str_two.length

    different_chars = []
    str_one.chars.each_with_index do |char, index|
      if (char <=> str_two[index]) != 0
        different_chars << char
      end
    end
    different_chars.count
  end
end