require_relative 'lib/film'
require_relative 'lib/film_collection'

collection = FilmCollection.from_dir('./data')

collection.directors.each_with_index do |director, i|
  puts "#{i + 1}. #{director}"
end

puts 'Enter the director number:'
director_number = STDIN.gets.to_i
director = collection.directors[director_number - 1]

puts collection.random_film_by_director(director)