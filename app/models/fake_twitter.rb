class FakeTwitter
  def self.clear
    @tweets = Hash.new([])
  end

  def self.[]=(term, tweet_texts)
    @tweets ||= {}
    @tweets[term] = tweet_texts
  end

  def self.search(term, options)
    @tweets ||= {} 
    tweets = @tweets[term].map do |tweet_text|
      Twitter::Tweet.new(text: tweet_text, id: 1234)
    end
  end
end
