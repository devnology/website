module Common
  module EmailHelper

    include Spinach::DSL

    include EmailSpec::Helpers
    include EmailSpec::Matchers

  end
end
