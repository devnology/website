class Event < ActiveRecord::Base

  has_many :registrations
  validates_presence_of :title, :description, :start_time, :end_time

  def confirmed_registrations
    registrations.where(confirmed: true)
  end

end
