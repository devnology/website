class RegistrationsController < ApplicationController

  inherit_resources
  belongs_to :event

  def create
    create! do |success, failure|
      failure.html { redirect_to event_path(@event) }
      success.html {
        RegistrationMailer.register(@event, @registration).deliver
        flash[:success] = 'We have send you a confirmation e-mail'
        redirect_to event_path(@event)
      }
    end
  end

  def confirm_registration
    registration = Registration.find_by_confirmation_token(params[:token])

    if registration.present?
      if registration.try(&:confirmed?)
        flash[:info] = 'You have already confirmed your registration'
      else
        flash[:success] = 'Your registration is confirmed, see you there!'
        registration.confirmed = true
        registration.save
      end

      redirect_to event_path(registration.event)
    else
      flash[:danger] = 'You are using an invalid confirmation token'
      redirect_to root_path
    end
  end

  private

  def permitted_params
    params.permit(registration: [:name, :email, :event_id])
  end

end
