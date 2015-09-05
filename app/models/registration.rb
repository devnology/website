class Registration < ActiveRecord::Base

  belongs_to :event

  before_create :generate_confirmation_token

  validates_presence_of :name, :email
  validates_uniqueness_of :email, scope: :event_id
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  protected

  def generate_confirmation_token
    self.confirmation_token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless self.class.exists?(confirmation_token: random_token)
    end
  end

end
