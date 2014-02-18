class Spinach::Features::ManagingEvents < Spinach::FeatureSteps

  include CommonSteps::Backend
  include CommonSteps::Event

  step 'I add an event' do
    click_on 'Add event'

    fill_in 'Title', with: 'Titel'
    fill_in 'Description', with: 'Een verhaaltje'
    fill_in 'Start time', with: '30-01-2014 18:00'
    fill_in 'End time', with: '30-01-2014 21:00'
    fill_in 'Registration opens', with: '01-01-2014 00:00'
    fill_in 'Number of seats', with: 30
    click_on 'Save'
  end

  step 'I change the title of the event' do
    edit_event

    fill_in 'Title', with: 'Andere naam'
    click_on 'Save'
  end

  step 'I add a location to the event' do
    edit_event_location

    fill_in 'Name', with: 'Mooie locatie'
    fill_in 'Address', with: 'Straat'
    fill_in 'City', with: 'Stad'
    click_on 'Save'
  end

  step 'I clear the name of the event location' do
    edit_event_location

    fill_in 'Name', with: ''
    click_on 'Save'
  end

  step 'I see the event listed' do
    page.should have_content 'Titel'
  end

  step 'I see the new name of the event listed' do
    page.should have_content 'Andere naam'
  end

  step 'I see the location in the event' do
    edit_event_location

    find_field('Name').value.should eq 'Mooie locatie'
  end

  step 'I see no location in the event' do
    edit_event_location

    find_field('Name').value.should eq nil
    find_field('Address').value.should eq nil
    find_field('City').value.should eq nil
  end

  private

  def edit_event
    visit backend_events_path
    click_on 'Leuke bijeenkomst'
  end

  def edit_event_location
    edit_event
    click_on 'Location'
  end

end
