class PagesController < ApplicationController

  def homepage
    @upcoming_events = Event.where("end_time > ?", Time.now)
  end

end
