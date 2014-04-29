class TwitterService

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = TWITTER[:consumer_key]
      config.consumer_secret     = TWITTER[:consumer_secret]
      config.access_token        = TWITTER[:access_token]
      config.access_token_secret = TWITTER[:access_token_secret]
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
