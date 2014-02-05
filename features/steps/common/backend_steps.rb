require_relative 'factories'

module CommonSteps
  module Backend

    include Spinach::DSL
    include Factories

    step 'there is an administrator' do
      create_admin
    end

    step 'I visit the admin backend' do
      visit backend_root_path
    end

    step 'I log in to the backend' do
      login
    end

    step 'I am a logged in administrator' do
      create_admin
      login
    end

    private

    def login
      visit backend_root_path
      fill_in 'E-mail', with: 'admin@devnology.nl'
      fill_in 'Password', with: 'randompassword'
      click_on 'Sign in'
    end

  end
end
