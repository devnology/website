class PagesController < ApplicationController

  def homepage
    @upcoming_events = Event.where("end_time > ?", Time.now).order("end_time")
    @next_event = @upcoming_events.first
  end

end
