class Registration < ActiveRecord::Base

  belongs_to :event

  before_create :generate_confirmation_token

  protected

  def generate_confirmation_token
    self.confirmation_token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless self.class.exists?(confirmation_token: random_token)
    end
  end

end
