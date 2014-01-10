class TwitterApi
  def initialize
    @client = Twitter::REST::Client.new(config)
  end
  
  def search(term, count = 15)
    @client.search(term).take(count)
  end
  
  private
  def config
    {
      consumer_key: ENV['TWITTER_CONSUMER_KEY'],
      consumer_secret: ENV['TWITTER_CONSUMER_SECRET'],
      access_token: ENV['TWITTER_OAUTH_TOKEN'],
      access_token_secret: ENV['TWITTER_OAUTH_TOKEN_SECRET']
    }
  end
end