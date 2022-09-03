class Twitter
  attr_reader :tweet
  
  def initialize(username, tweet)
    @username = username
    @tweet = tweet
  end
end
