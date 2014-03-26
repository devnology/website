class PodcastsController < ApplicationController

  def index
    @podcasts = FetchPodcasts.new.podcasts
  end

  def show
    @podcast = FetchPodcasts.new.podcast(params[:id])
  end

end
