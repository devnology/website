class LibsynService

  def initialize
    @connection = Faraday.new(url: 'http://devnology.libsyn.com/') do |faraday|
      faraday.response :rss
      faraday.response :caching do
        ActiveSupport::Cache::FileStore.new cache_dir,
                                            namespace: 'podcast',
                                            :expires_in => 900
      end

      faraday.adapter Faraday.default_adapter
    end
  end

  def podcasts
    @connection.get('/rss').body.items.map do |podcast|
      Podcast.new(podcast)
    end
  end

  def podcast(slug)
    podcasts.detect do |podcast|
      podcast.slug == slug
    end
  end

  private

  def cache_dir
    File.join(Rails.root, '/tmp', 'cache')
  end
end
