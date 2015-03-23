module Factories

  def create_admin
    Admin.create!(name: 'Administrator',
                  email: 'admin@devnology.nl',
                  password: 'randompassword')
  end

  def create_upcoming_event
    Event.create!(title: 'Leuke bijeenkomst',
                  description: 'Tekst',
                  start_time: Time.now + 1.day,
                  end_time: Time.now + 2.days,
                  registration_opens: Time.now - 1.day,
                  number_of_seats: 20)
  end

  def create_registration(event)
    Registration.create!(name: 'Sinterklaas',
                         email: 'sinterklaas@google.com',
                         event: event,
                         confirmed: true)
  end

  def create_location(event)
    Location.create!(name: 'Stoomboot',
                     address: 'Waterweg',
                     city: 'Barcelona',
                     event: event)
  end

  def create_blog_post
    Blog.create!(title: 'Leuke blog post',
                 content: 'Tekst')
  end

end
