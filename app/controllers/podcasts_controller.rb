class PodcastsController < ApplicationController

  def index
    podcasts = LibsynService.new.podcasts

    @recent_podcasts = podcasts.first(3)
    @old_podcasts = podcasts - @recent_podcasts
  end

  def show
    @podcast = LibsynService.new.podcast(params[:id])
  end

end
