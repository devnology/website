module Factories

  def create_admin
    Admin.create!(name: 'Administrator',
                  email: 'admin@devnology.nl',
                  password: 'randompassword')
  end

  def create_upcoming_event
    Event.create!(title: 'Leuke bijeenkomst',
                  description: 'Tekst',
                  start_time: Time.now + 1.hour,
                  end_time: Time.now + 2.hour,
                  registration_opens: Time.now,
                  number_of_seats: 20)
  end

  def create_registration(event)
    Registration.create!(name: 'Sinterklaas',
                         email: 'sinterklaas@google.com',
                         event: event,
                         confirmed: true)
  end

end
