class Blog < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  validates_presence_of :title,
                        :content

end
