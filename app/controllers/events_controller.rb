class EventsController < ApplicationController

  inherit_resources

  def show
    @registration = Registration.new
  end

end
