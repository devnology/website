class FetchPodcasts

  def initialize
    @conn = Faraday.new(url: 'http://feeds.feedburner.com/') do |faraday|
      faraday.response :rss
      faraday.response :caching do
        ActiveSupport::Cache::FileStore.new cache_dir,
                                            namespace: 'podcast',
                                            :expires_in => 3600
      end
      faraday.adapter  Faraday.default_adapter
    end
  end

  def podcasts
    @conn.get('/DevnologyPodcast').body.items
  end

  private

  def cache_dir
    File.join(Rails.root, '/tmp', 'cache')
  end
end
