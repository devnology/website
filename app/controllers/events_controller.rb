class EventsController < ApplicationController

  inherit_resources

  def show
    @new_registration = Registration.new
    @confirmed_registrations = Registration.where(
      event_id: resource, confirmed: true)
  end

end
