class Spinach::Features::EventRegistration < Spinach::FeatureSteps

  include Common::EmailHelper

  step 'there is an event' do
    Event.create(
      title: 'Leuke bijeenkomst',
      description: 'Tekst',
      start_time: Time.now,
      end_time: Time.now + 1.hour)
  end

  step 'I register for an event' do
    visit root_path
    click_on 'Leuke bijeenkomst'

    fill_in 'Name', with: 'Iemand'
    fill_in 'E-mail', with: 'iemand@google.com'
    click_on 'Register'
  end

  step 'I receive a confirmation e-mail' do
    open_last_email_for('iemand@google.com')
    current_email.default_part_body.to_s.should include('Confirm')
  end
end
