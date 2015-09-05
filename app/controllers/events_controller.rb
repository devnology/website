class EventsController < ApplicationController

  def index
    events = Event.all.order("end_time DESC")

    @upcoming_events = Event.upcoming
    @old_events = events - @upcoming_events
  end

  def show
    @event = Event.find(params[:id])
    @registration = Registration.new
  end

  def register
    @event = Event.find(params[:id])

    if @event.full?
      flash[:danger] = "Unfortunately the event is full"
    else
      @registration = Registration.new(registration_params)
      @registration.event = @event

      if @registration.save
        RegistrationMailer.register(@event, @registration).deliver_now
        flash[:success] = 'We have sent you an e-mail, please use the link to confirm your registration'
      end
    end

    render :show
  end

  def unregister
    event = Event.find(params[:id])
    registration = Registration.find_by_email(params[:registration][:email])

    if registration.present?
      RegistrationMailer.unregister(event, registration).deliver_now
      flash[:success] = 'We have sent you an e-mail, please use the link to confirm your unregistration'
    else
      flash[:danger] = "There is no registration with the e-mail address '#{params[:registration][:email]}'"
    end

    redirect_to event_path(event)
  end

  def confirm_registration
    event = Event.find(params[:id])
    registration = Registration.find_by_confirmation_token(params[:token])

    if registration.present?
      if registration.try(&:confirmed?)
        flash[:info] = 'You have already confirmed your registration'
      else
        flash[:success] = 'Your registration is confirmed, see you there!'

        registration.confirmed = true
        registration.save
      end
    else
      flash[:info] = 'We cannot find your registration. Did you register?'
    end

    redirect_to event_path(event)
  end

  def confirm_unregistration
    event = Event.find(params[:id])
    registration = Registration.find_by_confirmation_token(params[:token])

    if registration.present?
      flash[:success] = 'Your registration is cancelled, see you next time!'
      registration.destroy
    else
      flash[:info] = 'We cannot find your registration. Did you already unregister?'
    end

    redirect_to event_path(event)
  end

  private

  def registration_params
    params.require(:registration).permit(:name, :email)
  end

end
