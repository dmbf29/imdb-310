require 'open-uri'
require 'nokogiri'

url = 'https://www.imdb.com/title/tt0468569/'
html_content = open(url, 'Accept-Language' => 'en').read
doc = Nokogiri::HTML(html_content)

doc.search('.REPLACE_ME')#.each do |element|
  # element.text.strip
# end
