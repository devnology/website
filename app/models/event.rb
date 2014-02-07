class Event < ActiveRecord::Base

  has_many :registrations
  validates_presence_of :title,
                        :description,
                        :start_time,
                        :end_time,
                        :registration_opens,
                        :number_of_seats

  def confirmed_registrations
    registrations.where(confirmed: true)
  end

  def full?
    confirmed_registrations.count >= number_of_seats
  end

  def open_for_registration?
    (registration_opens..start_time).cover?(Time.now)
  end

end
