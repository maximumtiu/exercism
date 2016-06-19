class Hamming
  VERSION = 2

  def self.compute(str_one, str_two)
    raise ArgumentError if str_one.length != str_two.length

    count = 0
    str_one.chars.each_with_index do |char, index|
      if char != str_two[index]
        count += 1
      end
    end
    count
  end
end
