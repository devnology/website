class Spinach::Features::EventRegistration < Spinach::FeatureSteps

  include Common::EmailHelper
  include Common::Factories

  step 'there is an event' do
    @event = create_upcoming_event
  end

  step 'I register for an event' do
    visit event_path(@event)

    fill_in 'Name', with: 'Sinterklaas'
    fill_in 'E-mail', with: 'sinterklaas@google.com'
    click_on 'Register'
  end

  step 'I confirm my registration' do
    open_last_email_for('sinterklaas@google.com')
    visit_in_email('Confirm registration')
  end

  step 'I confirm my registration again' do
    visit_in_email('Confirm registration')
  end

  step 'I see a message that my registration is confirmed' do
    page.should have_content 'Your registration is confirmed'
  end

  step 'I see my name in the list of participants' do
    page.should have_content 'Sinterklaas'
  end

  step 'I see a message that my registration was already confirmed' do
    page.should have_content 'You have already confirmed your registration'
  end

end
