class Spinach::Features::ManagingEvents < Spinach::FeatureSteps

  include CommonSteps::Backend

  step 'I add an event' do
    click_on 'Add event'

    fill_in 'Title', with: 'Titel'
    fill_in 'Description', with: 'Een verhaaltje'
    fill_in 'Start time', with: '30-01-2014 18:00'
    fill_in 'End time', with: '30-01-2014 21:00'

    click_on 'Add'
  end

  step 'I see the event listed' do
    page.should have_content 'Titel'
  end

end
