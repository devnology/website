require_relative 'factories'

module CommonSteps
  module Event

    include Spinach::DSL
    include Factories

    step 'there is an event' do
      @event = create_upcoming_event
    end

  end
end
