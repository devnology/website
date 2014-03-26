class Spinach::Features::EventRegistration < Spinach::FeatureSteps

  include EmailHelpers
  include Factories

  include CommonSteps::Event

  step 'I have registered for an event' do
    @event = create_upcoming_event
    @registration = create_registration(@event)
  end

  step 'there is an event that is not open for registration' do
    @event = create_upcoming_event
    @event.update_attribute(:registration_opens, Time.now + 1.day)
  end

  step 'there is a full event' do
    @event = create_upcoming_event
    @event.update_attribute(:number_of_seats, 1)
    create_registration(@event)
  end

  step 'I view the event' do
    visit event_path(@event)
  end

  step 'I register for the event' do
    visit event_path(@event)

    within '.register' do
      fill_in 'Name', with: 'Sinterklaas'
      fill_in 'E-mail', with: 'sinterklaas@google.com'
      click_on 'Register'
    end
  end

  step 'I unregister for the event' do
    visit event_path(@event)

    within '.unregister' do
      fill_in 'E-mail', with: 'sinterklaas@google.com'
      click_on 'Unregister'
    end
  end

  step 'I unregister for the event with an incorrect e-mail address' do
    visit event_path(@event)

    within '.unregister' do
      fill_in 'E-mail', with: 'foutje@google.com'
      click_on 'Unregister'
    end
  end

  step 'I confirm my registration' do
    open_last_email_for('sinterklaas@google.com')
    visit_in_email('Confirm registration')
  end

  step 'I confirm my unregistration' do
    open_last_email_for('sinterklaas@google.com')
    visit_in_email('Confirm unregistration')
  end

  step 'I see a message that my registration is confirmed' do
    page.should have_content 'Your registration is confirmed'
  end

  step 'I see a message that my unregistration is confirmed' do
    page.should have_content 'Your registration is cancelled'
  end

  step 'I see my name in the list of participants' do
    page.should have_content 'Sinterklaas'
  end

  step 'I see that my name is not in the list of participants anymore' do
    page.should_not have_content 'Sinterklaas'
  end

  step 'I see a message that my registration was already confirmed' do
    page.should have_content 'You have already confirmed your registration'
  end

  step 'I see a message that someone already registered with my address' do
    page.should have_content 'has already been taken'
  end

  step 'I see a message that I am using an invalid token' do
    page.should have_content 'You are using an invalid token for unregistration'
  end

  step 'I see a message that there is no registration with my e-mail address' do
    page.should have_content 'There is no registration'
  end

  step 'I see a message that the event is not open for registration' do
    page.should have_content 'This is event is not open for registration'
  end

  step 'I see a message that the event is full' do
    page.should have_content 'Unfortunately this event is full'
  end

end
