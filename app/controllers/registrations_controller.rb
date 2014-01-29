class RegistrationsController < ApplicationController
  inherit_resources
  belongs_to :event

  def create
    create! { event_path(@event) }
  end

  private

  def permitted_params
    params.permit(registration: [:name, :email, :event_id])
  end

end
