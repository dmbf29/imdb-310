# require "yaml"
# array = [ { a: "a" }, { b: "b" }]
# puts array.to_yaml
# File.open("the_file.yml", "w") do |f|
#   f.write("something")
# end

# # data for #fetch_movies_url:
[
  "https://www.imdb.com/title/tt0111161/",
  "https://www.imdb.com/title/tt0068646/",
  "https://www.imdb.com/title/tt0071562/",
  "https://www.imdb.com/title/tt0468569/",
  "https://www.imdb.com/title/tt0050083/"
]

# # data for #scrape_movie:
{
  cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
  director: "Christopher Nolan",
  storyline: "When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
  title: "The Dark Knight",
  year: 2008
}
