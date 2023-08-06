class Film
  attr_reader :title, :director, :year

  def self.from_fule(filename)
    #todo
  end

  def initialize
    #todo
  end

  def to_s
    "#{@title} - (#{@director}, #{@year})"
  end
end
