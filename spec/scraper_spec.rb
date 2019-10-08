require_relative '../scraper'

# name, params, return array of strings
describe '#fetch_top_urls' do
  it 'should return 5 urls in an array' do
    actual = fetch_top_urls
    expected = [
      'https://www.imdb.com/title/tt0111161/',
      'https://www.imdb.com/title/tt0068646/',
      'https://www.imdb.com/title/tt0071562/',
      'https://www.imdb.com/title/tt0468569/',
      'https://www.imdb.com/title/tt0050083/'
    ]
    expect(actual).to eq(expected)
  end
end

describe '#movie_scraper' do
  it 'should return a hash of info when given a proper url' do
    actual = movie_scraper('https://www.imdb.com/title/tt0468569')
    expected = {
      cast: ['Christian Bale', 'Heath Ledger', 'Aaron Eckhart' ],
      director: 'Christopher Nolan',
      storyline: 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
      title: 'The Dark Knight',
      year: 2008
    }
    expect(actual).to eq(expected)
  end
end









