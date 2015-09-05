class BlogsController < ApplicationController

  def index
    blogs = Blog.all.order("created_at DESC")

    @most_recent_blog = blogs.first
    @old_blogs = blogs.drop(1)

    @recent_tweets = TwitterService.new.recent_tweets
  end

  def show
    @blog = Blog.find(params[:id])
    @recent_tweets = TwitterService.new.recent_tweets
  end

end
