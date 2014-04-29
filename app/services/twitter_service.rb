class TwitterService

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "TyFo3VRFAlo8F5BoWx9v8MBDA"
      config.consumer_secret     = "qPYI3QRVntOujGzLcKDCoMPREaYNGOlm8FQ26YQjgJR9Em32sv"
      config.access_token        = "61209889-Vy6bGokyUq7E5cjohNZlPnD1DIJdQUKSG46aPPusZ"
      config.access_token_secret = "1IxRYNlGGEVlP8X51HgKbtV2XAcuKvgssanm5Ud5HoduH"
    end
  end

  def recent_tweets
    @client.home_timeline.take(3).map do |tweet|
      Tweet.new(tweet)
    end
  end

  private

  def cache_dir
    File.join(Rails.root, '/tmp', 'cache')
  end

end
