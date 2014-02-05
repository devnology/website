class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
    @registration = Registration.new
  end

  def register
    @event = Event.find(params[:id])
    @registration = Registration.new(registration_params)
    @registration.event = @event

    if @registration.save
      RegistrationMailer.register(@event, @registration).deliver
      flash[:success] = 'We have send you a confirmation e-mail'
    end

    render :show
  end

  def confirm_registration
    event = Event.find(params[:id])
    registration = event.registration(params[:token])

    if registration.present?
      if registration.try(&:confirmed?)
        flash[:info] = 'You have already confirmed your registration'
      else
        flash[:success] = 'Your registration is confirmed, see you there!'

        registration.confirmed = true
        registration.save
      end
    end

    redirect_to event_path(event)
  end

  private

  def registration_params
    params.require(:registration).permit(:name, :email)
  end

end
