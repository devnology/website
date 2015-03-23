class Blog < ActiveRecord::Base

  include Bootsy::Container

  validates_presence_of :title,
                        :content

end
