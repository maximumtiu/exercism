class Hamming
  VERSION = 2

  def self.compute(str_a, str_b)
    raise ArgumentError if str_a.length != str_b.length
    str_a.chars.each_index.count { |ind| str_a[ind] != str_b[ind] }
  end
end
