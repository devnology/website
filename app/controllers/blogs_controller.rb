class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.order("created_at DESC")
    @recent_tweets = TwitterService.new.recent_tweets
  end

  def show
    @blog = Blog.find(params[:id])
    @recent_tweets = TwitterService.new.recent_tweets
  end

end
