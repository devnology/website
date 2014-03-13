class PodcastsController < ApplicationController

  def index
    @podcasts = FetchPodcasts.new.podcasts
  end

end
