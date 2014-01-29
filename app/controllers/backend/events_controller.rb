module Backend
  class EventsController < ApplicationController
    inherit_resources

    def create
      create! { backend_events_path }
    end

    def permitted_params
      params.permit(event: [:title, :description, :start_time, :end_time])
    end

  end
end
