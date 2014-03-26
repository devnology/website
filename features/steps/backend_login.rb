class Spinach::Features::LoginForBackend < Spinach::FeatureSteps

  include CommonSteps::Backend

  step 'I should see that I am logged in' do
    expect(page).to have_content 'Add event'
  end

end
