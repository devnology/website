class Backend::RegistrationsController < Backend::ApplicationController

  inherit_resources
  belongs_to :event

end
