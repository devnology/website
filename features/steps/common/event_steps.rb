require_relative 'factories'

module CommonSteps
  module Event

    include Spinach::DSL
    include Factories

    step 'there is an event' do
      @event = create_upcoming_event
    end

    step 'there is an event with a location' do
      @event = create_upcoming_event
      create_location(@event)
    end

    step 'there is an event with a registration' do
      @event = create_upcoming_event
      create_registration(@event)
    end
  end
end
