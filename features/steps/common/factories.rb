module Factories

  def create_upcoming_event
    Event.create!(
      title: 'Leuke bijeenkomst',
      description: 'Tekst',
      start_time: Time.now,
      end_time: Time.now + 1.hour)
  end

  def create_admin
    Admin.create!(name: 'Administrator',
                  email: 'admin@devnology.nl',
                  password: 'randompassword')
  end

end
