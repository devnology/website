class Backend::EventsController < Backend::ApplicationController

  inherit_resources

  def collection
    @events ||= end_of_association_chain.order('start_time DESC')
  end

  def create
    create! { backend_events_path }
  end

  def edit
    edit! { @event.build_location unless @event.location }
  end

  def update
    update! { backend_events_path }
  end

  def permitted_params
    params.permit(event: [:title,
                          :description,
                          :start_time,
                          :end_time,
                          :registration_opens,
                          :number_of_seats,
                          location_attributes: [:id,
                                                :name,
                                                :address,
                                                :city,
                                                :website,
                                                :directions]])
  end

end
