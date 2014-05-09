class TwitterService

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = CONFIG['twitter']['consumer_key']
      config.consumer_secret     = CONFIG['twitter']['consumer_secret']
      config.access_token        = CONFIG['twitter']['access_token']
      config.access_token_secret = CONFIG['twitter']['access_token_secret']
    end
  end

  def recent_tweets
    Rails.cache.fetch("recent_tweets", :expires_in => 15.minutes) do
      @client.home_timeline.take(3).map do |tweet|
        Tweet.new(tweet)
      end
    end
  end

end
