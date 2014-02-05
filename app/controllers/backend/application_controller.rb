class Backend::ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  layout 'backend'

  before_filter :authenticate_admin!

end
