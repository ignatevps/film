class FilmCollection
  def self.from_dir(dir_path)
    films = Dir[dir_path + '/*.md'].map do |file|
      Film.from_file(file)
    end
    new(films)
  end

  def initialize(films)
    @films = films
  end

  def films_by_director
    @films.group_by(&:director)
  end

  def directors
    films_by_director.keys
  end

  def random_film_by_director(director)
    films_by_director[director].sample
  end
end
