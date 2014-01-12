class FakeTwitter
  def self.clear
    @tweets = Hash.new([])
  end

  def self.[]=(term, tweet_datum)
    @tweets ||= {}
    @tweets[term] = tweet_datum
  end

  def self.search(term, options)
    @tweets ||= {} 
    tweets = @tweets[term].map do |tweet_data|
      Twitter::Tweet.new(tweet_data.merge(id: 1234))
    end
  end
end
