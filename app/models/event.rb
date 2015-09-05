class Event < ActiveRecord::Base

  include TruncateHtmlHelper

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  has_many :registrations, dependent: :destroy

  has_one :location, dependent: :destroy
  accepts_nested_attributes_for :location, reject_if: :all_blank, allow_destroy: true
  before_validation :remove_empty_location

  validates_presence_of :title,
                        :description,
                        :start_time,
                        :end_time,
                        :registration_opens,
                        :number_of_seats

  def self.upcoming
    where("end_time > ?", Time.now).order("end_time")
  end

  def confirmed_registrations
    registrations.where(confirmed: true)
  end

  def available_seats
    number_of_seats - confirmed_registrations.count
  end

  def full?
    if number_of_seats == 0
        false
    else
        confirmed_registrations.count >= number_of_seats
    end
  end

  def open_for_registration?
    (registration_opens..start_time).cover?(Time.now)
  end

  def truncated_description
    truncate_html(description, length: 350)
  end

  private

  def remove_empty_location
    if location and location.persisted? and location.name.blank?
      location.mark_for_destruction
    end
  end

end
