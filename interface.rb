require_relative 'scraper'
require 'yaml'

movies = fetch_top_urls.map do |url|
  movie_scraper(url)
end


File.open('movies.yml', 'w') do |f|
  f.write(movies.to_yaml)
end
# turn the array into a yaml file
