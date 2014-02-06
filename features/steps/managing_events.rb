class Spinach::Features::ManagingEvents < Spinach::FeatureSteps

  include CommonSteps::Backend
  include CommonSteps::Event

  step 'I add an event' do
    click_on 'Add event'

    fill_in 'Title', with: 'Titel'
    fill_in 'Description', with: 'Een verhaaltje'
    fill_in 'Start time', with: '30-01-2014 18:00'
    fill_in 'End time', with: '30-01-2014 21:00'
    click_on 'Save'
  end

  step 'I change the title of the event' do
    visit backend_events_path
    click_on 'Leuke bijeenkomst'

    fill_in 'Title', with: 'Andere naam'
    click_on 'Save'
  end

  step 'I see the event listed' do
    page.should have_content 'Titel'
  end

  step 'I see the new name of the event listed' do
    page.should have_content 'Andere naam'
  end

end
