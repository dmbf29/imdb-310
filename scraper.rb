require 'open-uri'
require 'nokogiri'

def fetch_top_urls
  # use open-uri to read the Top 5 on IMDB
  html = open('https://www.imdb.com/chart/top', 'Accept-Language' => 'en').read
  # give the html to nokogiri
  doc = Nokogiri::HTML(html)
  # search nokogiri for the top 5 urls (array of string)
  doc.search('.titleColumn a').first(5).map do |element|
    "https://www.imdb.com#{element.attributes['href'].value}"
  end
end

def movie_scraper(url)
  html = open(url, 'Accept-Language' => 'en').read
  doc = Nokogiri::HTML(html)
  # create a hash for each movie
  movie_info = {}
  movie_info[:director] =
    doc.search('.plot_summary .credit_summary_item a').first.text.strip
  movie_info[:storyline] =
    doc.search('.summary_text').first.text.strip
  movie_info[:title] =
    doc.search('.title_wrapper h1').first.text.strip[0...-7]
  movie_info[:year ] =
    doc.search('#titleYear a').first.text.to_i
  movie_info[:cast] =
    doc.search('.plot_summary .credit_summary_item')[2].search('a').first(3).map do |element|
       element.text.strip
    end
  movie_info
  # should return a hash of movie info
end

# movie_scraper('https://www.imdb.com/title/tt0468569')


