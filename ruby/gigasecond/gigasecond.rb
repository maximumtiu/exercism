class Gigasecond
  VERSION = File.read('./.version').to_i

  def self.from(time)
    time + Gigasecond.seconds
  end

  def self.seconds
    10 ** 9
  end
end