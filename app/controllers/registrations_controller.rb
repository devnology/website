class RegistrationsController < ApplicationController
  inherit_resources
  belongs_to :event

  def create
    create! do |success, failure|
      failure.html { redirect_to event_path(@event) }
      success.html {
        RegistrationMailer.register(@event, @registration).deliver
        redirect_to event_path(@event)
      }
    end
  end

  def confirm_registration
  end

  private

  def permitted_params
    params.permit(registration: [:name, :email, :event_id])
  end

end
