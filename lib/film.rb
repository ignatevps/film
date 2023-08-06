class Film
  attr_reader :title, :director, :year

  def self.from_file(filename)
    lines = File.readlines(filename).map(&:chomp)
    new(
      title: lines[0],
      director: lines[1],
      year: lines[2]
    )
  end

  def initialize(params)
    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "#{@title} - (#{@director}, #{@year})"
  end
end
