class RegistrationMailer < ActionMailer::Base
  default from: 'Devnology <secretariaat@devnology.nl>'

  def register(event, registration)
    @event = event
    @registration = registration

    mail to: registration.email,
         subject: "Confirm registration for '#{@event.title}'"
  end

end
